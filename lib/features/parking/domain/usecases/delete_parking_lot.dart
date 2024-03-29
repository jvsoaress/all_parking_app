import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/employee.dart';
import '../entities/manager.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_employee_repository.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class DeleteParkingLot {
  final IParkingLotRepository _parkingLotRepository;
  final IManagerRepository _managerRepository;
  final IEmployeeRepository _employeeRepository;

  const DeleteParkingLot(this._parkingLotRepository, this._managerRepository, this._employeeRepository);

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) async {
    final parkingLotEither = await _parkingLotRepository.delete(parkingLot);
    return parkingLotEither.fold(
      (f) => left(f),
      (_) => _removeFromManagerParkingLots(parkingLot),
    );
  }

  Future<Either<ParkingFailure, Unit>> _removeFromManagerParkingLots(ParkingLot parkingLot) async {
    final managerEither = await _managerRepository.read();
    return managerEither.fold(
      (f) => left(f),
      (manager) async {
        final newParkingLots = _removeParkingLotFromManager(manager, parkingLot.id);
        final newEmployees = await _removeEmployeesRelatedToParkingLot(manager, parkingLot.id);
        final newManager = manager.copyWith(parkingLots: newParkingLots, employees: newEmployees);
        return _managerRepository.update(newManager);
      },
    );
  }

  Future<KtList<Employee>> _removeEmployeesRelatedToParkingLot(Manager manager, String parkingLotId) async {
    final employees = manager.employees.filter((employee) => employee.parkingLot.id == parkingLotId);
    final result = await _deleteAssociatedEmployeesAccounts(employees);
    return result.fold(
      (f) => manager.employees,
      (_) => manager.employees.minus(employees),
    );
  }

  KtList<String> _removeParkingLotFromManager(Manager manager, String parkingLotId) {
    return manager.parkingLots.minusElement(parkingLotId);
  }

  Future<Either<ParkingFailure, Unit>> _deleteAssociatedEmployeesAccounts(KtList<Employee> employees) async {
    final results = <Either<ParkingFailure, Unit>>[];
    employees.forEach((employee) async {
      final result = await _employeeRepository.delete(employee);
      results.add(result);
    });
    if (results.every((element) => element.isRight()))
      return right(unit);
    else
      return left(ParkingFailure.serverFailure());
  }
}

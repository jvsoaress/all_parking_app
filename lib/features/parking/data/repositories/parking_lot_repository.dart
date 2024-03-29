import 'package:all_parking/utils/error_report_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../utils/firebase_helpers.dart';
import '../../core/errors/parking_failure.dart';
import '../../domain/entities/parked_vehicle.dart';
import '../../domain/entities/parked_vehicles_list.dart';
import '../../domain/entities/parking_lot.dart';
import '../../domain/repositories/i_parking_lot_repository.dart';
import '../dtos/parked_vehicle_dto.dart';
import '../dtos/parking_lot_dto.dart';
import '../models/order_by.dart';

@LazySingleton(as: IParkingLotRepository)
class ParkingLotRepository implements IParkingLotRepository {
  final FirebaseFirestore _firestore;
  final ErrorReportService _reportService;

  const ParkingLotRepository(this._firestore, this._reportService);

  Future<Either<ParkingFailure, Unit>> _handleExceptions(Future<void> Function() function) async {
    try {
      await function();
      return right(unit);
    } on FirebaseException catch (e, s) {
      await _reportService.log(e, s);
      return left(ParkingFailure.serverFailure());
    } catch (e, s) {
      await _reportService.log(e, s);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Future<Either<ParkingFailure, Unit>> create(ParkingLot parkingLot) {
    return _handleExceptions(() async {
      final parkingLotDTO = ParkingLotDTO.fromDomain(parkingLot);
      await _firestore.parkingLotCollection.doc(parkingLotDTO.id).set(parkingLotDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> delete(ParkingLot parkingLot) {
    return _handleExceptions(() async {
      await _firestore.parkingLotCollection.doc(parkingLot.id).delete();
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> update(ParkingLot parkingLot) {
    return _handleExceptions(() async {
      final parkingLotDTO = ParkingLotDTO.fromDomain(parkingLot);
      await _firestore.parkingLotCollection.doc(parkingLotDTO.id).update(parkingLotDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> checkInVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot}) {
    return _handleExceptions(() async {
      final vehicleDTO = ParkedVehicleDTO.fromDomain(vehicle);
      await _firestore.parkedVehiclesCollection(parkingLot.id).doc(vehicle.id.value).set(vehicleDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> checkOutVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot}) {
    return _handleExceptions(() async {
      final vehicleDTO = ParkedVehicleDTO.fromDomain(vehicle).copyWith(checkOut: DateTime.now(), isActive: false);
      await _firestore.parkedVehiclesCollection(parkingLot.id).doc(vehicle.id.value).update(vehicleDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, KtList<ParkingLot>>> fetchParkingLots(KtList<String> parkingLots) async {
    try {
      final snapshot = await _firestore.parkingLotCollection.where(FieldPath.documentId, whereIn: parkingLots.asList()).get();
      final entityList = snapshot.docs.map((doc) => ParkingLotDTO.fromFirestore(doc).toDomain()).toImmutableList();
      return right(entityList);
    } on FirebaseException catch (e, s) {
      await _reportService.log(e, s);
      return left(ParkingFailure.serverFailure());
    } catch (e, s) {
      await _reportService.log(e, s);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Stream<Either<ParkingFailure, ParkingLot>> watchById(ParkingLot parkingLot) {
    return _firestore.parkingLotCollection.doc(parkingLot.id).snapshots().map((doc) {
      if (doc.exists) return right(ParkingLotDTO.fromFirestore(doc).toDomain());
      return left(ParkingFailure.parkingLotNotFound());
    })
      ..onErrorReturnWith((e) {
        _reportService.log(e, StackTrace.current);
        return left(ParkingFailure.serverFailure());
      });
  }

  @override
  Stream<Either<ParkingFailure, ActiveParkedVehicles>> watchActiveVehicles(ParkingLot parkingLot, [OrderBy orderBy]) {
    return _getVehiclesSnapshot(isActiveVehicles: true, parkingLot: parkingLot, orderBy: orderBy).map((snapshot) {
      final vehicleList = snapshot.docs.map((doc) => ParkedVehicleDTO.fromJson(doc.data()).toDomain()).toImmutableList();
      return right(ActiveParkedVehicles(vehicleList));
    })
      ..onErrorReturnWith((e) {
        _reportService.log(e, StackTrace.current);
        return left(ParkingFailure.serverFailure());
      });
    ;
  }

  @override
  Stream<Either<ParkingFailure, InactiveParkedVehicles>> watchInactiveVehicles(ParkingLot parkingLot, [OrderBy orderBy]) {
    return _getVehiclesSnapshot(isActiveVehicles: false, orderBy: orderBy, parkingLot: parkingLot, limit: 300).map((snapshot) {
      final vehicleList = snapshot.docs.map((doc) => ParkedVehicleDTO.fromJson(doc.data()).toDomain()).toImmutableList();
      return right(InactiveParkedVehicles(vehicleList));
    })
      ..onErrorReturnWith((e) {
        _reportService.log(e, StackTrace.current);
        return left(ParkingFailure.serverFailure());
      });
    ;
  }

  Stream<QuerySnapshot> _getVehiclesSnapshot({
    @required ParkingLot parkingLot,
    @required bool isActiveVehicles,
    int limit = 100,
    OrderBy orderBy,
  }) async* {
    final order = orderBy ?? const OrderBy('checkIn', descending: true);
    yield* _firestore
        .parkedVehiclesCollection(parkingLot.id)
        .where('isActive', isEqualTo: isActiveVehicles)
        .orderBy(order.field, descending: order.descending)
        .limit(limit)
        .snapshots();
  }
}

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/data/dtos/manager_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/manager.dart';
import '../../domain/repositories/i_manager_repository.dart';
import '../../../../utils/firebase_helpers.dart';

@LazySingleton(as: IManagerRepository)
class ManagerRepository implements IManagerRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  const ManagerRepository(this._firestore, this._firebaseAuth) : assert(_firestore != null, _firebaseAuth != null);

  @override
  Future<Either<ParkingFailure, Unit>> update(Manager manager) async {
    try {
      final managerDTO = ManagerDTO.fromDomain(manager);
      final managerDoc = await _firestore.managerCollection.doc(manager.id);
      await managerDoc.set(managerDTO.toJson(), SetOptions(merge: true));
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ParkingFailure.unknownFailure());
    }
  }

  Future<Either<ParkingFailure, Manager>> read() async {
    try {
      final user = _firebaseAuth.currentUser;
      final managerDoc = await _firestore.managerCollection.doc(user.uid).get();
      return right(ManagerDTO.fromFirestore(managerDoc).toDomain());
    } on FirebaseException catch (e) {
      print(e);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ParkingFailure.unknownFailure());
    }
  }
}

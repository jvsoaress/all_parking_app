import 'package:all_parking/features/parking/data/repositories/parking_lot_repository.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

void main() {
  ParkingLotRepository repository;
  MockFirestoreInstance mockFirestoreInstance;

  setUp(() {
    mockFirestoreInstance = MockFirestoreInstance();
    repository = ParkingLotRepository(mockFirestoreInstance);
  });

  test('should call Firebase Firestore with parsed ParkingLot and return unit', () async {
    final result = await repository.create(parkingLot);

    print(mockFirestoreInstance.dump());
    expect(result, Right(unit));
  });
}
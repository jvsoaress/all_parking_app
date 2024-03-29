import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/features/qr_code/domain/repositories/i_code_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

@lazySingleton
class GenerateQRCodes {
  final ICodeRepository _repository;

  const GenerateQRCodes(this._repository);

  Future<Either<QRFailure, KtList<QRCode>>> call(ParkingLot parkingLot) async {
    final list = List.generate(parkingLot.availableSpots, (index) => QRCode(Uuid().v1())).toImmutableList();
    final either = await _repository.create(list, parkingLot: parkingLot);
    return either.fold(
      (f) => left(f),
      (_) => right(list),
    );
  }
}

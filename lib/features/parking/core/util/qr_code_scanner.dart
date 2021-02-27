import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/parked_vehicle.dart';

class QRCodeScanner {
  static Future<Option<QRCode>> scan() async {
    await Future.delayed(const Duration(seconds: 2));
    return some(QRCode(Uuid().v1()));
  }
}

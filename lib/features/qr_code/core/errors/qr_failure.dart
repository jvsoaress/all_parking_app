import 'package:all_parking/res/messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_failure.freezed.dart';

@freezed
abstract class QRFailure with _$QRFailure {
  factory QRFailure(String message) = _QRFailure;

  factory QRFailure.invalidQRCode() => QRFailure(Messages.invalidQRCode);
  factory QRFailure.widgetToImageFailed() => QRFailure(Messages.widgetToImageFailed);
  factory QRFailure.vehicleNotFound() => QRFailure(Messages.vehicleNotFound);
  factory QRFailure.serverFailure() => QRFailure(Messages.serverFailure);
  factory QRFailure.unknownFailure() => QRFailure(Messages.unknownFailure);
}

import 'package:all_parking/widgets/no_current_parking_lot_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../features/parking/domain/entities/parking_lot.dart';
import '../features/parking/presentation/current_parking_lot.dart';

class CurrentParkingLotBuilder extends StatelessWidget {
  final Widget Function(ParkingLot parkingLot) builder;
  final Widget noParkingLotWidget;
  final Widget child;

  const CurrentParkingLotBuilder({
    Key key,
    @required this.builder,
    this.noParkingLotWidget,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentParkingLot>(
      builder: (context, currentParkingLot, child) {
        return currentParkingLot.buildWidget(
          onSuccess: builder,
          onFailure: noParkingLotWidget ?? const NoCurrentParkingLotInfo(),
        );
      },
      child: child,
    );
  }
}

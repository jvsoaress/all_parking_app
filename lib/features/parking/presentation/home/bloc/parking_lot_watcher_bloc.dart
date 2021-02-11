import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../service_locator.dart';
import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../../domain/usecases/watch_all_parking_lots.dart';
import '../../current_parking_lot.dart';

part 'parking_lot_watcher_bloc.freezed.dart';
part 'parking_lot_watcher_event.dart';
part 'parking_lot_watcher_state.dart';

@injectable
class ParkingLotWatcherBloc extends Bloc<ParkingLotWatcherEvent, ParkingLotWatcherState> {
  final WatchAllParkingLots _watchAllParkingLots;

  ParkingLotWatcherBloc(this._watchAllParkingLots) : super(_Initial());

  final currentParkingLot = getIt<CurrentParkingLot>();
  StreamSubscription<Either<ParkingFailure, KtList<ParkingLot>>> _subscription;

  @override
  Stream<ParkingLotWatcherState> mapEventToState(ParkingLotWatcherEvent event) async* {
    yield* event.map(
      watchStarted: (e) async* {
        yield ParkingLotWatcherState.loading();
        _subscription = _watchAllParkingLots().listen((event) => add(ParkingLotWatcherEvent.updateReceived(event)));
      },
      updateReceived: (e) async* {
        yield e.either.fold(
          (f) => ParkingLotWatcherState.error(f),
          (parkingLots) {
            if (currentParkingLot.value.isNone() && parkingLots.isNotEmpty()) {
              currentParkingLot.setValue(parkingLots.first());
            } else if (parkingLots.isEmpty()) {
              currentParkingLot.resetField();
            } else if (!_isCurrentParkingLotRegistered(parkingLots)) {
              currentParkingLot.setValue(parkingLots.first());
            } else {
              currentParkingLot.updateValue(parkingLots);
            }
            return ParkingLotWatcherState.success(parkingLots);
          },
        );
      },
    );
  }

  bool _isCurrentParkingLotRegistered(KtList<ParkingLot> parkingLots) {
    return parkingLots.any((parkingLot) => parkingLot.id == currentParkingLot.value.getOrElse(() => null).id);
  }

  @override
  Future<void> close() => Future.wait([super.close(), _subscription?.cancel()]);
}

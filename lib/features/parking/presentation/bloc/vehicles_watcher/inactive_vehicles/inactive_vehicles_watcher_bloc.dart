
import '../../../../domain/usecases/watch_inactive_vehicles.dart';
import '../vehicles_watcher_bloc.dart';
import '../../../current_parking_lot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inactive_vehicles_watcher_bloc.freezed.dart';
part 'inactive_vehicles_watcher_event.dart';
part 'inactive_vehicles_watcher_state.dart';

@injectable
class InactiveVehiclesWatcherBloc extends VehiclesWatcherBloc {
  InactiveVehiclesWatcherBloc(WatchInactiveVehicles watchVehicles, CurrentParkingLot currentParkingLot)
      : super(watchVehicles, currentParkingLot);
}

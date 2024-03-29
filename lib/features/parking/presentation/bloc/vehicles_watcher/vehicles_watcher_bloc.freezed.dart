// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vehicles_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VehiclesWatcherEventTearOff {
  const _$VehiclesWatcherEventTearOff();

// ignore: unused_element
  _WatchStarted watchStarted(@nullable ParkingLot parkingLot) {
    return _WatchStarted(
      parkingLot,
    );
  }

// ignore: unused_element
  _UpdateReceived updateReceived(
      Either<ParkingFailure, ParkedVehiclesList> either) {
    return _UpdateReceived(
      either,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VehiclesWatcherEvent = _$VehiclesWatcherEventTearOff();

/// @nodoc
mixin _$VehiclesWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchStarted(@nullable ParkingLot parkingLot),
    @required
        TResult updateReceived(
            Either<ParkingFailure, ParkedVehiclesList> either),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchStarted(@nullable ParkingLot parkingLot),
    TResult updateReceived(Either<ParkingFailure, ParkedVehiclesList> either),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchStarted(_WatchStarted value),
    @required TResult updateReceived(_UpdateReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchStarted(_WatchStarted value),
    TResult updateReceived(_UpdateReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VehiclesWatcherEventCopyWith<$Res> {
  factory $VehiclesWatcherEventCopyWith(VehiclesWatcherEvent value,
          $Res Function(VehiclesWatcherEvent) then) =
      _$VehiclesWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehiclesWatcherEventCopyWithImpl<$Res>
    implements $VehiclesWatcherEventCopyWith<$Res> {
  _$VehiclesWatcherEventCopyWithImpl(this._value, this._then);

  final VehiclesWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(VehiclesWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchStartedCopyWith<$Res> {
  factory _$WatchStartedCopyWith(
          _WatchStarted value, $Res Function(_WatchStarted) then) =
      __$WatchStartedCopyWithImpl<$Res>;
  $Res call({@nullable ParkingLot parkingLot});

  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$WatchStartedCopyWithImpl<$Res>
    extends _$VehiclesWatcherEventCopyWithImpl<$Res>
    implements _$WatchStartedCopyWith<$Res> {
  __$WatchStartedCopyWithImpl(
      _WatchStarted _value, $Res Function(_WatchStarted) _then)
      : super(_value, (v) => _then(v as _WatchStarted));

  @override
  _WatchStarted get _value => super._value as _WatchStarted;

  @override
  $Res call({
    Object parkingLot = freezed,
  }) {
    return _then(_WatchStarted(
      parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
    ));
  }

  @override
  $ParkingLotCopyWith<$Res> get parkingLot {
    if (_value.parkingLot == null) {
      return null;
    }
    return $ParkingLotCopyWith<$Res>(_value.parkingLot, (value) {
      return _then(_value.copyWith(parkingLot: value));
    });
  }
}

/// @nodoc
class _$_WatchStarted implements _WatchStarted {
  const _$_WatchStarted(@nullable this.parkingLot);

  @override
  @nullable
  final ParkingLot parkingLot;

  @override
  String toString() {
    return 'VehiclesWatcherEvent.watchStarted(parkingLot: $parkingLot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchStarted &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLot);

  @JsonKey(ignore: true)
  @override
  _$WatchStartedCopyWith<_WatchStarted> get copyWith =>
      __$WatchStartedCopyWithImpl<_WatchStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchStarted(@nullable ParkingLot parkingLot),
    @required
        TResult updateReceived(
            Either<ParkingFailure, ParkedVehiclesList> either),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return watchStarted(parkingLot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchStarted(@nullable ParkingLot parkingLot),
    TResult updateReceived(Either<ParkingFailure, ParkedVehiclesList> either),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchStarted != null) {
      return watchStarted(parkingLot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchStarted(_WatchStarted value),
    @required TResult updateReceived(_UpdateReceived value),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchStarted(_WatchStarted value),
    TResult updateReceived(_UpdateReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchStarted implements VehiclesWatcherEvent {
  const factory _WatchStarted(@nullable ParkingLot parkingLot) =
      _$_WatchStarted;

  @nullable
  ParkingLot get parkingLot;
  @JsonKey(ignore: true)
  _$WatchStartedCopyWith<_WatchStarted> get copyWith;
}

/// @nodoc
abstract class _$UpdateReceivedCopyWith<$Res> {
  factory _$UpdateReceivedCopyWith(
          _UpdateReceived value, $Res Function(_UpdateReceived) then) =
      __$UpdateReceivedCopyWithImpl<$Res>;
  $Res call({Either<ParkingFailure, ParkedVehiclesList> either});
}

/// @nodoc
class __$UpdateReceivedCopyWithImpl<$Res>
    extends _$VehiclesWatcherEventCopyWithImpl<$Res>
    implements _$UpdateReceivedCopyWith<$Res> {
  __$UpdateReceivedCopyWithImpl(
      _UpdateReceived _value, $Res Function(_UpdateReceived) _then)
      : super(_value, (v) => _then(v as _UpdateReceived));

  @override
  _UpdateReceived get _value => super._value as _UpdateReceived;

  @override
  $Res call({
    Object either = freezed,
  }) {
    return _then(_UpdateReceived(
      either == freezed
          ? _value.either
          : either as Either<ParkingFailure, ParkedVehiclesList>,
    ));
  }
}

/// @nodoc
class _$_UpdateReceived implements _UpdateReceived {
  const _$_UpdateReceived(this.either) : assert(either != null);

  @override
  final Either<ParkingFailure, ParkedVehiclesList> either;

  @override
  String toString() {
    return 'VehiclesWatcherEvent.updateReceived(either: $either)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateReceived &&
            (identical(other.either, either) ||
                const DeepCollectionEquality().equals(other.either, either)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(either);

  @JsonKey(ignore: true)
  @override
  _$UpdateReceivedCopyWith<_UpdateReceived> get copyWith =>
      __$UpdateReceivedCopyWithImpl<_UpdateReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchStarted(@nullable ParkingLot parkingLot),
    @required
        TResult updateReceived(
            Either<ParkingFailure, ParkedVehiclesList> either),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return updateReceived(either);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchStarted(@nullable ParkingLot parkingLot),
    TResult updateReceived(Either<ParkingFailure, ParkedVehiclesList> either),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateReceived != null) {
      return updateReceived(either);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchStarted(_WatchStarted value),
    @required TResult updateReceived(_UpdateReceived value),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return updateReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchStarted(_WatchStarted value),
    TResult updateReceived(_UpdateReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateReceived != null) {
      return updateReceived(this);
    }
    return orElse();
  }
}

abstract class _UpdateReceived implements VehiclesWatcherEvent {
  const factory _UpdateReceived(
      Either<ParkingFailure, ParkedVehiclesList> either) = _$_UpdateReceived;

  Either<ParkingFailure, ParkedVehiclesList> get either;
  @JsonKey(ignore: true)
  _$UpdateReceivedCopyWith<_UpdateReceived> get copyWith;
}

/// @nodoc
class _$VehiclesWatcherStateTearOff {
  const _$VehiclesWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(ParkedVehiclesList vehicles) {
    return _Success(
      vehicles,
    );
  }

// ignore: unused_element
  _Error error(ParkingFailure failure) {
    return _Error(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VehiclesWatcherState = _$VehiclesWatcherStateTearOff();

/// @nodoc
mixin _$VehiclesWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehiclesList vehicles),
    @required TResult error(ParkingFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehiclesList vehicles),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VehiclesWatcherStateCopyWith<$Res> {
  factory $VehiclesWatcherStateCopyWith(VehiclesWatcherState value,
          $Res Function(VehiclesWatcherState) then) =
      _$VehiclesWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehiclesWatcherStateCopyWithImpl<$Res>
    implements $VehiclesWatcherStateCopyWith<$Res> {
  _$VehiclesWatcherStateCopyWithImpl(this._value, this._then);

  final VehiclesWatcherState _value;
  // ignore: unused_field
  final $Res Function(VehiclesWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$VehiclesWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'VehiclesWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehiclesList vehicles),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehiclesList vehicles),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VehiclesWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$VehiclesWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'VehiclesWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehiclesList vehicles),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehiclesList vehicles),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VehiclesWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({ParkedVehiclesList vehicles});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$VehiclesWatcherStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object vehicles = freezed,
  }) {
    return _then(_Success(
      vehicles == freezed ? _value.vehicles : vehicles as ParkedVehiclesList,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.vehicles) : assert(vehicles != null);

  @override
  final ParkedVehiclesList vehicles;

  @override
  String toString() {
    return 'VehiclesWatcherState.success(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicles);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehiclesList vehicles),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehiclesList vehicles),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(vehicles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements VehiclesWatcherState {
  const factory _Success(ParkedVehiclesList vehicles) = _$_Success;

  ParkedVehiclesList get vehicles;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ParkingFailure failure});

  $ParkingFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$VehiclesWatcherStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed ? _value.failure : failure as ParkingFailure,
    ));
  }

  @override
  $ParkingFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ParkingFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final ParkingFailure failure;

  @override
  String toString() {
    return 'VehiclesWatcherState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehiclesList vehicles),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehiclesList vehicles),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements VehiclesWatcherState {
  const factory _Error(ParkingFailure failure) = _$_Error;

  ParkingFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

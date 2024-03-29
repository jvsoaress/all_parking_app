// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

// ignore: unused_element
  _FirstNameChanged firstNameChanged(String value) {
    return _FirstNameChanged(
      value,
    );
  }

// ignore: unused_element
  _LastNameChanged lastNameChanged(String value) {
    return _LastNameChanged(
      value,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String value) {
    return _EmailChanged(
      value,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String value) {
    return _PasswordChanged(
      value,
    );
  }

// ignore: unused_element
  _ConfirmPasswordChanged confirmPasswordChanged(String value) {
    return _ConfirmPasswordChanged(
      value,
    );
  }

// ignore: unused_element
  _SignUpPressed signUpPressed() {
    return const _SignUpPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$FirstNameChangedCopyWith<$Res> {
  factory _$FirstNameChangedCopyWith(
          _FirstNameChanged value, $Res Function(_FirstNameChanged) then) =
      __$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$FirstNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$FirstNameChangedCopyWith<$Res> {
  __$FirstNameChangedCopyWithImpl(
      _FirstNameChanged _value, $Res Function(_FirstNameChanged) _then)
      : super(_value, (v) => _then(v as _FirstNameChanged));

  @override
  _FirstNameChanged get _value => super._value as _FirstNameChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_FirstNameChanged(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_FirstNameChanged implements _FirstNameChanged {
  const _$_FirstNameChanged(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.firstNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstNameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith =>
      __$FirstNameChangedCopyWithImpl<_FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return firstNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements SignUpEvent {
  const factory _FirstNameChanged(String value) = _$_FirstNameChanged;

  String get value;
  @JsonKey(ignore: true)
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class _$LastNameChangedCopyWith<$Res> {
  factory _$LastNameChangedCopyWith(
          _LastNameChanged value, $Res Function(_LastNameChanged) then) =
      __$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$LastNameChangedCopyWith<$Res> {
  __$LastNameChangedCopyWithImpl(
      _LastNameChanged _value, $Res Function(_LastNameChanged) _then)
      : super(_value, (v) => _then(v as _LastNameChanged));

  @override
  _LastNameChanged get _value => super._value as _LastNameChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_LastNameChanged(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_LastNameChanged implements _LastNameChanged {
  const _$_LastNameChanged(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.lastNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastNameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith =>
      __$LastNameChangedCopyWithImpl<_LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return lastNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements SignUpEvent {
  const factory _LastNameChanged(String value) = _$_LastNameChanged;

  String get value;
  @JsonKey(ignore: true)
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_EmailChanged(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
  const factory _EmailChanged(String value) = _$_EmailChanged;

  String get value;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_PasswordChanged(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  const factory _PasswordChanged(String value) = _$_PasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$ConfirmPasswordChangedCopyWith<$Res> {
  factory _$ConfirmPasswordChangedCopyWith(_ConfirmPasswordChanged value,
          $Res Function(_ConfirmPasswordChanged) then) =
      __$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$ConfirmPasswordChangedCopyWith<$Res> {
  __$ConfirmPasswordChangedCopyWithImpl(_ConfirmPasswordChanged _value,
      $Res Function(_ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmPasswordChanged));

  @override
  _ConfirmPasswordChanged get _value => super._value as _ConfirmPasswordChanged;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_ConfirmPasswordChanged(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpEvent.confirmPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmPasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      __$ConfirmPasswordChangedCopyWithImpl<_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return confirmPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements SignUpEvent {
  const factory _ConfirmPasswordChanged(String value) =
      _$_ConfirmPasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$SignUpPressedCopyWith<$Res> {
  factory _$SignUpPressedCopyWith(
          _SignUpPressed value, $Res Function(_SignUpPressed) then) =
      __$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpPressedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$SignUpPressedCopyWith<$Res> {
  __$SignUpPressedCopyWithImpl(
      _SignUpPressed _value, $Res Function(_SignUpPressed) _then)
      : super(_value, (v) => _then(v as _SignUpPressed));

  @override
  _SignUpPressed get _value => super._value as _SignUpPressed;
}

/// @nodoc
class _$_SignUpPressed implements _SignUpPressed {
  const _$_SignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String value),
    @required TResult lastNameChanged(String value),
    @required TResult emailChanged(String value),
    @required TResult passwordChanged(String value),
    @required TResult confirmPasswordChanged(String value),
    @required TResult signUpPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String value),
    TResult lastNameChanged(String value),
    TResult emailChanged(String value),
    TResult passwordChanged(String value),
    TResult confirmPasswordChanged(String value),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(_FirstNameChanged value),
    @required TResult lastNameChanged(_LastNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(confirmPasswordChanged != null);
    assert(signUpPressed != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(_FirstNameChanged value),
    TResult lastNameChanged(_LastNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult confirmPasswordChanged(_ConfirmPasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpPressed implements SignUpEvent {
  const factory _SignUpPressed() = _$_SignUpPressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {@required
          String firstName,
      @required
          String lastName,
      @required
          String email,
      @required
          String password,
      @required
          String confirmPassword,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption}) {
    return _SignUpState(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      signUpSuccessOrFailureOption: signUpSuccessOrFailureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  String get firstName;
  String get lastName;
  String get email;
  String get password;
  String get confirmPassword;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get signUpSuccessOrFailureOption;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      String confirmPassword,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object signUpSuccessOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      signUpSuccessOrFailureOption: signUpSuccessOrFailureOption == freezed
          ? _value.signUpSuccessOrFailureOption
          : signUpSuccessOrFailureOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String password,
      String confirmPassword,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object signUpSuccessOrFailureOption = freezed,
  }) {
    return _then(_SignUpState(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      signUpSuccessOrFailureOption: signUpSuccessOrFailureOption == freezed
          ? _value.signUpSuccessOrFailureOption
          : signUpSuccessOrFailureOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

@Implements(ValidationFormState)

/// @nodoc
class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {@required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.password,
      @required this.confirmPassword,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.signUpSuccessOrFailureOption})
      : assert(firstName != null),
        assert(lastName != null),
        assert(email != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(signUpSuccessOrFailureOption != null);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption;

  @override
  String toString() {
    return 'SignUpState(firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, signUpSuccessOrFailureOption: $signUpSuccessOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.signUpSuccessOrFailureOption,
                    signUpSuccessOrFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.signUpSuccessOrFailureOption,
                    signUpSuccessOrFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(signUpSuccessOrFailureOption);

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState, ValidationFormState {
  const factory _SignUpState(
          {@required
              String firstName,
          @required
              String lastName,
          @required
              String email,
          @required
              String password,
          @required
              String confirmPassword,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption}) =
      _$_SignUpState;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get signUpSuccessOrFailureOption;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}

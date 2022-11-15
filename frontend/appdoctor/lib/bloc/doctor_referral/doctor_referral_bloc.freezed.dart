// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor_referral_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorReferralEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getReferralsByDoctorId,
    required TResult Function(NewReferral newReferral) addNewReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getReferralsByDoctorId,
    TResult Function(NewReferral newReferral)? addNewReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getReferralsByDoctorId,
    TResult Function(NewReferral newReferral)? addNewReferral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReferralsByDoctorId value)
        getReferralsByDoctorId,
    required TResult Function(_AddNewReferral value) addNewReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReferralsByDoctorId value)? getReferralsByDoctorId,
    TResult Function(_AddNewReferral value)? addNewReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReferralsByDoctorId value)? getReferralsByDoctorId,
    TResult Function(_AddNewReferral value)? addNewReferral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReferralEventCopyWith<$Res> {
  factory $DoctorReferralEventCopyWith(
          DoctorReferralEvent value, $Res Function(DoctorReferralEvent) then) =
      _$DoctorReferralEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorReferralEventCopyWithImpl<$Res>
    implements $DoctorReferralEventCopyWith<$Res> {
  _$DoctorReferralEventCopyWithImpl(this._value, this._then);

  final DoctorReferralEvent _value;
  // ignore: unused_field
  final $Res Function(DoctorReferralEvent) _then;
}

/// @nodoc
abstract class _$$_GetReferralsByDoctorIdCopyWith<$Res> {
  factory _$$_GetReferralsByDoctorIdCopyWith(_$_GetReferralsByDoctorId value,
          $Res Function(_$_GetReferralsByDoctorId) then) =
      __$$_GetReferralsByDoctorIdCopyWithImpl<$Res>;
  $Res call({String doctorId});
}

/// @nodoc
class __$$_GetReferralsByDoctorIdCopyWithImpl<$Res>
    extends _$DoctorReferralEventCopyWithImpl<$Res>
    implements _$$_GetReferralsByDoctorIdCopyWith<$Res> {
  __$$_GetReferralsByDoctorIdCopyWithImpl(_$_GetReferralsByDoctorId _value,
      $Res Function(_$_GetReferralsByDoctorId) _then)
      : super(_value, (v) => _then(v as _$_GetReferralsByDoctorId));

  @override
  _$_GetReferralsByDoctorId get _value =>
      super._value as _$_GetReferralsByDoctorId;

  @override
  $Res call({
    Object? doctorId = freezed,
  }) {
    return _then(_$_GetReferralsByDoctorId(
      doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetReferralsByDoctorId implements _GetReferralsByDoctorId {
  const _$_GetReferralsByDoctorId(this.doctorId);

  @override
  final String doctorId;

  @override
  String toString() {
    return 'DoctorReferralEvent.getReferralsByDoctorId(doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetReferralsByDoctorId &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(doctorId));

  @JsonKey(ignore: true)
  @override
  _$$_GetReferralsByDoctorIdCopyWith<_$_GetReferralsByDoctorId> get copyWith =>
      __$$_GetReferralsByDoctorIdCopyWithImpl<_$_GetReferralsByDoctorId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getReferralsByDoctorId,
    required TResult Function(NewReferral newReferral) addNewReferral,
  }) {
    return getReferralsByDoctorId(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getReferralsByDoctorId,
    TResult Function(NewReferral newReferral)? addNewReferral,
  }) {
    return getReferralsByDoctorId?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getReferralsByDoctorId,
    TResult Function(NewReferral newReferral)? addNewReferral,
    required TResult orElse(),
  }) {
    if (getReferralsByDoctorId != null) {
      return getReferralsByDoctorId(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReferralsByDoctorId value)
        getReferralsByDoctorId,
    required TResult Function(_AddNewReferral value) addNewReferral,
  }) {
    return getReferralsByDoctorId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReferralsByDoctorId value)? getReferralsByDoctorId,
    TResult Function(_AddNewReferral value)? addNewReferral,
  }) {
    return getReferralsByDoctorId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReferralsByDoctorId value)? getReferralsByDoctorId,
    TResult Function(_AddNewReferral value)? addNewReferral,
    required TResult orElse(),
  }) {
    if (getReferralsByDoctorId != null) {
      return getReferralsByDoctorId(this);
    }
    return orElse();
  }
}

abstract class _GetReferralsByDoctorId implements DoctorReferralEvent {
  const factory _GetReferralsByDoctorId(final String doctorId) =
      _$_GetReferralsByDoctorId;

  String get doctorId;
  @JsonKey(ignore: true)
  _$$_GetReferralsByDoctorIdCopyWith<_$_GetReferralsByDoctorId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewReferralCopyWith<$Res> {
  factory _$$_AddNewReferralCopyWith(
          _$_AddNewReferral value, $Res Function(_$_AddNewReferral) then) =
      __$$_AddNewReferralCopyWithImpl<$Res>;
  $Res call({NewReferral newReferral});

  $NewReferralCopyWith<$Res> get newReferral;
}

/// @nodoc
class __$$_AddNewReferralCopyWithImpl<$Res>
    extends _$DoctorReferralEventCopyWithImpl<$Res>
    implements _$$_AddNewReferralCopyWith<$Res> {
  __$$_AddNewReferralCopyWithImpl(
      _$_AddNewReferral _value, $Res Function(_$_AddNewReferral) _then)
      : super(_value, (v) => _then(v as _$_AddNewReferral));

  @override
  _$_AddNewReferral get _value => super._value as _$_AddNewReferral;

  @override
  $Res call({
    Object? newReferral = freezed,
  }) {
    return _then(_$_AddNewReferral(
      newReferral == freezed
          ? _value.newReferral
          : newReferral // ignore: cast_nullable_to_non_nullable
              as NewReferral,
    ));
  }

  @override
  $NewReferralCopyWith<$Res> get newReferral {
    return $NewReferralCopyWith<$Res>(_value.newReferral, (value) {
      return _then(_value.copyWith(newReferral: value));
    });
  }
}

/// @nodoc

class _$_AddNewReferral implements _AddNewReferral {
  const _$_AddNewReferral(this.newReferral);

  @override
  final NewReferral newReferral;

  @override
  String toString() {
    return 'DoctorReferralEvent.addNewReferral(newReferral: $newReferral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewReferral &&
            const DeepCollectionEquality()
                .equals(other.newReferral, newReferral));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newReferral));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewReferralCopyWith<_$_AddNewReferral> get copyWith =>
      __$$_AddNewReferralCopyWithImpl<_$_AddNewReferral>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getReferralsByDoctorId,
    required TResult Function(NewReferral newReferral) addNewReferral,
  }) {
    return addNewReferral(newReferral);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getReferralsByDoctorId,
    TResult Function(NewReferral newReferral)? addNewReferral,
  }) {
    return addNewReferral?.call(newReferral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getReferralsByDoctorId,
    TResult Function(NewReferral newReferral)? addNewReferral,
    required TResult orElse(),
  }) {
    if (addNewReferral != null) {
      return addNewReferral(newReferral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReferralsByDoctorId value)
        getReferralsByDoctorId,
    required TResult Function(_AddNewReferral value) addNewReferral,
  }) {
    return addNewReferral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReferralsByDoctorId value)? getReferralsByDoctorId,
    TResult Function(_AddNewReferral value)? addNewReferral,
  }) {
    return addNewReferral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReferralsByDoctorId value)? getReferralsByDoctorId,
    TResult Function(_AddNewReferral value)? addNewReferral,
    required TResult orElse(),
  }) {
    if (addNewReferral != null) {
      return addNewReferral(this);
    }
    return orElse();
  }
}

abstract class _AddNewReferral implements DoctorReferralEvent {
  const factory _AddNewReferral(final NewReferral newReferral) =
      _$_AddNewReferral;

  NewReferral get newReferral;
  @JsonKey(ignore: true)
  _$$_AddNewReferralCopyWith<_$_AddNewReferral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorReferralState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReferrals,
    required TResult Function(List<Referral> referrals) loadedDoctorReferrals,
    required TResult Function(String message) errorDoctorReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loadingDoctorReferrals,
    required TResult Function(_Loaded value) loadedDoctorReferrals,
    required TResult Function(_Error value) errorDoctorReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReferralStateCopyWith<$Res> {
  factory $DoctorReferralStateCopyWith(
          DoctorReferralState value, $Res Function(DoctorReferralState) then) =
      _$DoctorReferralStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorReferralStateCopyWithImpl<$Res>
    implements $DoctorReferralStateCopyWith<$Res> {
  _$DoctorReferralStateCopyWithImpl(this._value, this._then);

  final DoctorReferralState _value;
  // ignore: unused_field
  final $Res Function(DoctorReferralState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DoctorReferralStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DoctorReferralState.loadingDoctorReferrals()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReferrals,
    required TResult Function(List<Referral> referrals) loadedDoctorReferrals,
    required TResult Function(String message) errorDoctorReferral,
  }) {
    return loadingDoctorReferrals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
  }) {
    return loadingDoctorReferrals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
    required TResult orElse(),
  }) {
    if (loadingDoctorReferrals != null) {
      return loadingDoctorReferrals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loadingDoctorReferrals,
    required TResult Function(_Loaded value) loadedDoctorReferrals,
    required TResult Function(_Error value) errorDoctorReferral,
  }) {
    return loadingDoctorReferrals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
  }) {
    return loadingDoctorReferrals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
    required TResult orElse(),
  }) {
    if (loadingDoctorReferrals != null) {
      return loadingDoctorReferrals(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DoctorReferralState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({List<Referral> referrals});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$DoctorReferralStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? referrals = freezed,
  }) {
    return _then(_$_Loaded(
      referrals == freezed
          ? _value._referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Referral> referrals) : _referrals = referrals;

  final List<Referral> _referrals;
  @override
  List<Referral> get referrals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referrals);
  }

  @override
  String toString() {
    return 'DoctorReferralState.loadedDoctorReferrals(referrals: $referrals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._referrals, _referrals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_referrals));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReferrals,
    required TResult Function(List<Referral> referrals) loadedDoctorReferrals,
    required TResult Function(String message) errorDoctorReferral,
  }) {
    return loadedDoctorReferrals(referrals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
  }) {
    return loadedDoctorReferrals?.call(referrals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
    required TResult orElse(),
  }) {
    if (loadedDoctorReferrals != null) {
      return loadedDoctorReferrals(referrals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loadingDoctorReferrals,
    required TResult Function(_Loaded value) loadedDoctorReferrals,
    required TResult Function(_Error value) errorDoctorReferral,
  }) {
    return loadedDoctorReferrals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
  }) {
    return loadedDoctorReferrals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
    required TResult orElse(),
  }) {
    if (loadedDoctorReferrals != null) {
      return loadedDoctorReferrals(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DoctorReferralState {
  const factory _Loaded(final List<Referral> referrals) = _$_Loaded;

  List<Referral> get referrals;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$DoctorReferralStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DoctorReferralState.errorDoctorReferral(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReferrals,
    required TResult Function(List<Referral> referrals) loadedDoctorReferrals,
    required TResult Function(String message) errorDoctorReferral,
  }) {
    return errorDoctorReferral(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
  }) {
    return errorDoctorReferral?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReferrals,
    TResult Function(List<Referral> referrals)? loadedDoctorReferrals,
    TResult Function(String message)? errorDoctorReferral,
    required TResult orElse(),
  }) {
    if (errorDoctorReferral != null) {
      return errorDoctorReferral(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loadingDoctorReferrals,
    required TResult Function(_Loaded value) loadedDoctorReferrals,
    required TResult Function(_Error value) errorDoctorReferral,
  }) {
    return errorDoctorReferral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
  }) {
    return errorDoctorReferral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorReferrals,
    TResult Function(_Loaded value)? loadedDoctorReferrals,
    TResult Function(_Error value)? errorDoctorReferral,
    required TResult orElse(),
  }) {
    if (errorDoctorReferral != null) {
      return errorDoctorReferral(this);
    }
    return orElse();
  }
}

abstract class _Error implements DoctorReferralState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

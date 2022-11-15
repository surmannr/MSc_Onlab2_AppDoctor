// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor_examination_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorExaminationReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId)
        getExaminationReservationsByDoctorId,
    required TResult Function(ExaminationReservation newReferral)
        addNewExaminationReservation,
    required TResult Function(String id, bool accept)
        acceptExaminationReservation,
    required TResult Function(String id, bool resolve)
        resolveExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExaminationReservationsByDoctorId value)
        getExaminationReservationsByDoctorId,
    required TResult Function(_AddNewExaminationReservation value)
        addNewExaminationReservation,
    required TResult Function(_AcceptExaminationReservation value)
        acceptExaminationReservation,
    required TResult Function(_ResolveExaminationReservation value)
        resolveExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorExaminationReservationEventCopyWith<$Res> {
  factory $DoctorExaminationReservationEventCopyWith(
          DoctorExaminationReservationEvent value,
          $Res Function(DoctorExaminationReservationEvent) then) =
      _$DoctorExaminationReservationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorExaminationReservationEventCopyWithImpl<$Res>
    implements $DoctorExaminationReservationEventCopyWith<$Res> {
  _$DoctorExaminationReservationEventCopyWithImpl(this._value, this._then);

  final DoctorExaminationReservationEvent _value;
  // ignore: unused_field
  final $Res Function(DoctorExaminationReservationEvent) _then;
}

/// @nodoc
abstract class _$$_GetExaminationReservationsByDoctorIdCopyWith<$Res> {
  factory _$$_GetExaminationReservationsByDoctorIdCopyWith(
          _$_GetExaminationReservationsByDoctorId value,
          $Res Function(_$_GetExaminationReservationsByDoctorId) then) =
      __$$_GetExaminationReservationsByDoctorIdCopyWithImpl<$Res>;
  $Res call({String doctorId});
}

/// @nodoc
class __$$_GetExaminationReservationsByDoctorIdCopyWithImpl<$Res>
    extends _$DoctorExaminationReservationEventCopyWithImpl<$Res>
    implements _$$_GetExaminationReservationsByDoctorIdCopyWith<$Res> {
  __$$_GetExaminationReservationsByDoctorIdCopyWithImpl(
      _$_GetExaminationReservationsByDoctorId _value,
      $Res Function(_$_GetExaminationReservationsByDoctorId) _then)
      : super(
            _value, (v) => _then(v as _$_GetExaminationReservationsByDoctorId));

  @override
  _$_GetExaminationReservationsByDoctorId get _value =>
      super._value as _$_GetExaminationReservationsByDoctorId;

  @override
  $Res call({
    Object? doctorId = freezed,
  }) {
    return _then(_$_GetExaminationReservationsByDoctorId(
      doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetExaminationReservationsByDoctorId
    implements _GetExaminationReservationsByDoctorId {
  const _$_GetExaminationReservationsByDoctorId(this.doctorId);

  @override
  final String doctorId;

  @override
  String toString() {
    return 'DoctorExaminationReservationEvent.getExaminationReservationsByDoctorId(doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExaminationReservationsByDoctorId &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(doctorId));

  @JsonKey(ignore: true)
  @override
  _$$_GetExaminationReservationsByDoctorIdCopyWith<
          _$_GetExaminationReservationsByDoctorId>
      get copyWith => __$$_GetExaminationReservationsByDoctorIdCopyWithImpl<
          _$_GetExaminationReservationsByDoctorId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId)
        getExaminationReservationsByDoctorId,
    required TResult Function(ExaminationReservation newReferral)
        addNewExaminationReservation,
    required TResult Function(String id, bool accept)
        acceptExaminationReservation,
    required TResult Function(String id, bool resolve)
        resolveExaminationReservation,
  }) {
    return getExaminationReservationsByDoctorId(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
  }) {
    return getExaminationReservationsByDoctorId?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (getExaminationReservationsByDoctorId != null) {
      return getExaminationReservationsByDoctorId(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExaminationReservationsByDoctorId value)
        getExaminationReservationsByDoctorId,
    required TResult Function(_AddNewExaminationReservation value)
        addNewExaminationReservation,
    required TResult Function(_AcceptExaminationReservation value)
        acceptExaminationReservation,
    required TResult Function(_ResolveExaminationReservation value)
        resolveExaminationReservation,
  }) {
    return getExaminationReservationsByDoctorId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
  }) {
    return getExaminationReservationsByDoctorId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (getExaminationReservationsByDoctorId != null) {
      return getExaminationReservationsByDoctorId(this);
    }
    return orElse();
  }
}

abstract class _GetExaminationReservationsByDoctorId
    implements DoctorExaminationReservationEvent {
  const factory _GetExaminationReservationsByDoctorId(final String doctorId) =
      _$_GetExaminationReservationsByDoctorId;

  String get doctorId;
  @JsonKey(ignore: true)
  _$$_GetExaminationReservationsByDoctorIdCopyWith<
          _$_GetExaminationReservationsByDoctorId>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewExaminationReservationCopyWith<$Res> {
  factory _$$_AddNewExaminationReservationCopyWith(
          _$_AddNewExaminationReservation value,
          $Res Function(_$_AddNewExaminationReservation) then) =
      __$$_AddNewExaminationReservationCopyWithImpl<$Res>;
  $Res call({ExaminationReservation newReferral});

  $ExaminationReservationCopyWith<$Res> get newReferral;
}

/// @nodoc
class __$$_AddNewExaminationReservationCopyWithImpl<$Res>
    extends _$DoctorExaminationReservationEventCopyWithImpl<$Res>
    implements _$$_AddNewExaminationReservationCopyWith<$Res> {
  __$$_AddNewExaminationReservationCopyWithImpl(
      _$_AddNewExaminationReservation _value,
      $Res Function(_$_AddNewExaminationReservation) _then)
      : super(_value, (v) => _then(v as _$_AddNewExaminationReservation));

  @override
  _$_AddNewExaminationReservation get _value =>
      super._value as _$_AddNewExaminationReservation;

  @override
  $Res call({
    Object? newReferral = freezed,
  }) {
    return _then(_$_AddNewExaminationReservation(
      newReferral == freezed
          ? _value.newReferral
          : newReferral // ignore: cast_nullable_to_non_nullable
              as ExaminationReservation,
    ));
  }

  @override
  $ExaminationReservationCopyWith<$Res> get newReferral {
    return $ExaminationReservationCopyWith<$Res>(_value.newReferral, (value) {
      return _then(_value.copyWith(newReferral: value));
    });
  }
}

/// @nodoc

class _$_AddNewExaminationReservation implements _AddNewExaminationReservation {
  const _$_AddNewExaminationReservation(this.newReferral);

  @override
  final ExaminationReservation newReferral;

  @override
  String toString() {
    return 'DoctorExaminationReservationEvent.addNewExaminationReservation(newReferral: $newReferral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewExaminationReservation &&
            const DeepCollectionEquality()
                .equals(other.newReferral, newReferral));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newReferral));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewExaminationReservationCopyWith<_$_AddNewExaminationReservation>
      get copyWith => __$$_AddNewExaminationReservationCopyWithImpl<
          _$_AddNewExaminationReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId)
        getExaminationReservationsByDoctorId,
    required TResult Function(ExaminationReservation newReferral)
        addNewExaminationReservation,
    required TResult Function(String id, bool accept)
        acceptExaminationReservation,
    required TResult Function(String id, bool resolve)
        resolveExaminationReservation,
  }) {
    return addNewExaminationReservation(newReferral);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
  }) {
    return addNewExaminationReservation?.call(newReferral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (addNewExaminationReservation != null) {
      return addNewExaminationReservation(newReferral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExaminationReservationsByDoctorId value)
        getExaminationReservationsByDoctorId,
    required TResult Function(_AddNewExaminationReservation value)
        addNewExaminationReservation,
    required TResult Function(_AcceptExaminationReservation value)
        acceptExaminationReservation,
    required TResult Function(_ResolveExaminationReservation value)
        resolveExaminationReservation,
  }) {
    return addNewExaminationReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
  }) {
    return addNewExaminationReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (addNewExaminationReservation != null) {
      return addNewExaminationReservation(this);
    }
    return orElse();
  }
}

abstract class _AddNewExaminationReservation
    implements DoctorExaminationReservationEvent {
  const factory _AddNewExaminationReservation(
          final ExaminationReservation newReferral) =
      _$_AddNewExaminationReservation;

  ExaminationReservation get newReferral;
  @JsonKey(ignore: true)
  _$$_AddNewExaminationReservationCopyWith<_$_AddNewExaminationReservation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptExaminationReservationCopyWith<$Res> {
  factory _$$_AcceptExaminationReservationCopyWith(
          _$_AcceptExaminationReservation value,
          $Res Function(_$_AcceptExaminationReservation) then) =
      __$$_AcceptExaminationReservationCopyWithImpl<$Res>;
  $Res call({String id, bool accept});
}

/// @nodoc
class __$$_AcceptExaminationReservationCopyWithImpl<$Res>
    extends _$DoctorExaminationReservationEventCopyWithImpl<$Res>
    implements _$$_AcceptExaminationReservationCopyWith<$Res> {
  __$$_AcceptExaminationReservationCopyWithImpl(
      _$_AcceptExaminationReservation _value,
      $Res Function(_$_AcceptExaminationReservation) _then)
      : super(_value, (v) => _then(v as _$_AcceptExaminationReservation));

  @override
  _$_AcceptExaminationReservation get _value =>
      super._value as _$_AcceptExaminationReservation;

  @override
  $Res call({
    Object? id = freezed,
    Object? accept = freezed,
  }) {
    return _then(_$_AcceptExaminationReservation(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accept == freezed
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AcceptExaminationReservation implements _AcceptExaminationReservation {
  const _$_AcceptExaminationReservation(this.id, this.accept);

  @override
  final String id;
  @override
  final bool accept;

  @override
  String toString() {
    return 'DoctorExaminationReservationEvent.acceptExaminationReservation(id: $id, accept: $accept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptExaminationReservation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.accept, accept));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(accept));

  @JsonKey(ignore: true)
  @override
  _$$_AcceptExaminationReservationCopyWith<_$_AcceptExaminationReservation>
      get copyWith => __$$_AcceptExaminationReservationCopyWithImpl<
          _$_AcceptExaminationReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId)
        getExaminationReservationsByDoctorId,
    required TResult Function(ExaminationReservation newReferral)
        addNewExaminationReservation,
    required TResult Function(String id, bool accept)
        acceptExaminationReservation,
    required TResult Function(String id, bool resolve)
        resolveExaminationReservation,
  }) {
    return acceptExaminationReservation(id, accept);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
  }) {
    return acceptExaminationReservation?.call(id, accept);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (acceptExaminationReservation != null) {
      return acceptExaminationReservation(id, accept);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExaminationReservationsByDoctorId value)
        getExaminationReservationsByDoctorId,
    required TResult Function(_AddNewExaminationReservation value)
        addNewExaminationReservation,
    required TResult Function(_AcceptExaminationReservation value)
        acceptExaminationReservation,
    required TResult Function(_ResolveExaminationReservation value)
        resolveExaminationReservation,
  }) {
    return acceptExaminationReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
  }) {
    return acceptExaminationReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (acceptExaminationReservation != null) {
      return acceptExaminationReservation(this);
    }
    return orElse();
  }
}

abstract class _AcceptExaminationReservation
    implements DoctorExaminationReservationEvent {
  const factory _AcceptExaminationReservation(
      final String id, final bool accept) = _$_AcceptExaminationReservation;

  String get id;
  bool get accept;
  @JsonKey(ignore: true)
  _$$_AcceptExaminationReservationCopyWith<_$_AcceptExaminationReservation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResolveExaminationReservationCopyWith<$Res> {
  factory _$$_ResolveExaminationReservationCopyWith(
          _$_ResolveExaminationReservation value,
          $Res Function(_$_ResolveExaminationReservation) then) =
      __$$_ResolveExaminationReservationCopyWithImpl<$Res>;
  $Res call({String id, bool resolve});
}

/// @nodoc
class __$$_ResolveExaminationReservationCopyWithImpl<$Res>
    extends _$DoctorExaminationReservationEventCopyWithImpl<$Res>
    implements _$$_ResolveExaminationReservationCopyWith<$Res> {
  __$$_ResolveExaminationReservationCopyWithImpl(
      _$_ResolveExaminationReservation _value,
      $Res Function(_$_ResolveExaminationReservation) _then)
      : super(_value, (v) => _then(v as _$_ResolveExaminationReservation));

  @override
  _$_ResolveExaminationReservation get _value =>
      super._value as _$_ResolveExaminationReservation;

  @override
  $Res call({
    Object? id = freezed,
    Object? resolve = freezed,
  }) {
    return _then(_$_ResolveExaminationReservation(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      resolve == freezed
          ? _value.resolve
          : resolve // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ResolveExaminationReservation
    implements _ResolveExaminationReservation {
  const _$_ResolveExaminationReservation(this.id, this.resolve);

  @override
  final String id;
  @override
  final bool resolve;

  @override
  String toString() {
    return 'DoctorExaminationReservationEvent.resolveExaminationReservation(id: $id, resolve: $resolve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResolveExaminationReservation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.resolve, resolve));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(resolve));

  @JsonKey(ignore: true)
  @override
  _$$_ResolveExaminationReservationCopyWith<_$_ResolveExaminationReservation>
      get copyWith => __$$_ResolveExaminationReservationCopyWithImpl<
          _$_ResolveExaminationReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId)
        getExaminationReservationsByDoctorId,
    required TResult Function(ExaminationReservation newReferral)
        addNewExaminationReservation,
    required TResult Function(String id, bool accept)
        acceptExaminationReservation,
    required TResult Function(String id, bool resolve)
        resolveExaminationReservation,
  }) {
    return resolveExaminationReservation(id, resolve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
  }) {
    return resolveExaminationReservation?.call(id, resolve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getExaminationReservationsByDoctorId,
    TResult Function(ExaminationReservation newReferral)?
        addNewExaminationReservation,
    TResult Function(String id, bool accept)? acceptExaminationReservation,
    TResult Function(String id, bool resolve)? resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (resolveExaminationReservation != null) {
      return resolveExaminationReservation(id, resolve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExaminationReservationsByDoctorId value)
        getExaminationReservationsByDoctorId,
    required TResult Function(_AddNewExaminationReservation value)
        addNewExaminationReservation,
    required TResult Function(_AcceptExaminationReservation value)
        acceptExaminationReservation,
    required TResult Function(_ResolveExaminationReservation value)
        resolveExaminationReservation,
  }) {
    return resolveExaminationReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
  }) {
    return resolveExaminationReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExaminationReservationsByDoctorId value)?
        getExaminationReservationsByDoctorId,
    TResult Function(_AddNewExaminationReservation value)?
        addNewExaminationReservation,
    TResult Function(_AcceptExaminationReservation value)?
        acceptExaminationReservation,
    TResult Function(_ResolveExaminationReservation value)?
        resolveExaminationReservation,
    required TResult orElse(),
  }) {
    if (resolveExaminationReservation != null) {
      return resolveExaminationReservation(this);
    }
    return orElse();
  }
}

abstract class _ResolveExaminationReservation
    implements DoctorExaminationReservationEvent {
  const factory _ResolveExaminationReservation(
      final String id, final bool resolve) = _$_ResolveExaminationReservation;

  String get id;
  bool get resolve;
  @JsonKey(ignore: true)
  _$$_ResolveExaminationReservationCopyWith<_$_ResolveExaminationReservation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorExaminationReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorExaminationReservations,
    required TResult Function(
            List<ExaminationReservation> examinationReservations)
        loadedDoctorExaminationReservations,
    required TResult Function(String message) errorExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value)
        loadingDoctorExaminationReservations,
    required TResult Function(_Loaded value)
        loadedDoctorExaminationReservations,
    required TResult Function(_Error value) errorExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorExaminationReservationStateCopyWith<$Res> {
  factory $DoctorExaminationReservationStateCopyWith(
          DoctorExaminationReservationState value,
          $Res Function(DoctorExaminationReservationState) then) =
      _$DoctorExaminationReservationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorExaminationReservationStateCopyWithImpl<$Res>
    implements $DoctorExaminationReservationStateCopyWith<$Res> {
  _$DoctorExaminationReservationStateCopyWithImpl(this._value, this._then);

  final DoctorExaminationReservationState _value;
  // ignore: unused_field
  final $Res Function(DoctorExaminationReservationState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DoctorExaminationReservationStateCopyWithImpl<$Res>
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
    return 'DoctorExaminationReservationState.loadingDoctorExaminationReservations()';
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
    required TResult Function() loadingDoctorExaminationReservations,
    required TResult Function(
            List<ExaminationReservation> examinationReservations)
        loadedDoctorExaminationReservations,
    required TResult Function(String message) errorExaminationReservation,
  }) {
    return loadingDoctorExaminationReservations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
  }) {
    return loadingDoctorExaminationReservations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
    required TResult orElse(),
  }) {
    if (loadingDoctorExaminationReservations != null) {
      return loadingDoctorExaminationReservations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value)
        loadingDoctorExaminationReservations,
    required TResult Function(_Loaded value)
        loadedDoctorExaminationReservations,
    required TResult Function(_Error value) errorExaminationReservation,
  }) {
    return loadingDoctorExaminationReservations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
  }) {
    return loadingDoctorExaminationReservations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
    required TResult orElse(),
  }) {
    if (loadingDoctorExaminationReservations != null) {
      return loadingDoctorExaminationReservations(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DoctorExaminationReservationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({List<ExaminationReservation> examinationReservations});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$DoctorExaminationReservationStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? examinationReservations = freezed,
  }) {
    return _then(_$_Loaded(
      examinationReservations == freezed
          ? _value._examinationReservations
          : examinationReservations // ignore: cast_nullable_to_non_nullable
              as List<ExaminationReservation>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<ExaminationReservation> examinationReservations)
      : _examinationReservations = examinationReservations;

  final List<ExaminationReservation> _examinationReservations;
  @override
  List<ExaminationReservation> get examinationReservations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examinationReservations);
  }

  @override
  String toString() {
    return 'DoctorExaminationReservationState.loadedDoctorExaminationReservations(examinationReservations: $examinationReservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(
                other._examinationReservations, _examinationReservations));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_examinationReservations));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorExaminationReservations,
    required TResult Function(
            List<ExaminationReservation> examinationReservations)
        loadedDoctorExaminationReservations,
    required TResult Function(String message) errorExaminationReservation,
  }) {
    return loadedDoctorExaminationReservations(examinationReservations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
  }) {
    return loadedDoctorExaminationReservations?.call(examinationReservations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
    required TResult orElse(),
  }) {
    if (loadedDoctorExaminationReservations != null) {
      return loadedDoctorExaminationReservations(examinationReservations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value)
        loadingDoctorExaminationReservations,
    required TResult Function(_Loaded value)
        loadedDoctorExaminationReservations,
    required TResult Function(_Error value) errorExaminationReservation,
  }) {
    return loadedDoctorExaminationReservations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
  }) {
    return loadedDoctorExaminationReservations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
    required TResult orElse(),
  }) {
    if (loadedDoctorExaminationReservations != null) {
      return loadedDoctorExaminationReservations(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DoctorExaminationReservationState {
  const factory _Loaded(
      final List<ExaminationReservation> examinationReservations) = _$_Loaded;

  List<ExaminationReservation> get examinationReservations;
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
    extends _$DoctorExaminationReservationStateCopyWithImpl<$Res>
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
    return 'DoctorExaminationReservationState.errorExaminationReservation(message: $message)';
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
    required TResult Function() loadingDoctorExaminationReservations,
    required TResult Function(
            List<ExaminationReservation> examinationReservations)
        loadedDoctorExaminationReservations,
    required TResult Function(String message) errorExaminationReservation,
  }) {
    return errorExaminationReservation(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
  }) {
    return errorExaminationReservation?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorExaminationReservations,
    TResult Function(List<ExaminationReservation> examinationReservations)?
        loadedDoctorExaminationReservations,
    TResult Function(String message)? errorExaminationReservation,
    required TResult orElse(),
  }) {
    if (errorExaminationReservation != null) {
      return errorExaminationReservation(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value)
        loadingDoctorExaminationReservations,
    required TResult Function(_Loaded value)
        loadedDoctorExaminationReservations,
    required TResult Function(_Error value) errorExaminationReservation,
  }) {
    return errorExaminationReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
  }) {
    return errorExaminationReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loadingDoctorExaminationReservations,
    TResult Function(_Loaded value)? loadedDoctorExaminationReservations,
    TResult Function(_Error value)? errorExaminationReservation,
    required TResult orElse(),
  }) {
    if (errorExaminationReservation != null) {
      return errorExaminationReservation(this);
    }
    return orElse();
  }
}

abstract class _Error implements DoctorExaminationReservationState {
  const factory _Error(final String message) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

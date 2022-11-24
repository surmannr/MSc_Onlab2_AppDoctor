// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_examination_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewExaminationReservation _$NewExaminationReservationFromJson(
    Map<String, dynamic> json) {
  return _NewExaminationReservation.fromJson(json);
}

/// @nodoc
mixin _$NewExaminationReservation {
  DateTime get dateFrom => throw _privateConstructorUsedError;
  DateTime get dateTo => throw _privateConstructorUsedError;
  String get patientProblem => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewExaminationReservationCopyWith<NewExaminationReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewExaminationReservationCopyWith<$Res> {
  factory $NewExaminationReservationCopyWith(NewExaminationReservation value,
          $Res Function(NewExaminationReservation) then) =
      _$NewExaminationReservationCopyWithImpl<$Res>;
  $Res call(
      {DateTime dateFrom,
      DateTime dateTo,
      String patientProblem,
      String doctorId,
      String patientId});
}

/// @nodoc
class _$NewExaminationReservationCopyWithImpl<$Res>
    implements $NewExaminationReservationCopyWith<$Res> {
  _$NewExaminationReservationCopyWithImpl(this._value, this._then);

  final NewExaminationReservation _value;
  // ignore: unused_field
  final $Res Function(NewExaminationReservation) _then;

  @override
  $Res call({
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? patientProblem = freezed,
    Object? doctorId = freezed,
    Object? patientId = freezed,
  }) {
    return _then(_value.copyWith(
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientProblem: patientProblem == freezed
          ? _value.patientProblem
          : patientProblem // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NewExaminationReservationCopyWith<$Res>
    implements $NewExaminationReservationCopyWith<$Res> {
  factory _$$_NewExaminationReservationCopyWith(
          _$_NewExaminationReservation value,
          $Res Function(_$_NewExaminationReservation) then) =
      __$$_NewExaminationReservationCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime dateFrom,
      DateTime dateTo,
      String patientProblem,
      String doctorId,
      String patientId});
}

/// @nodoc
class __$$_NewExaminationReservationCopyWithImpl<$Res>
    extends _$NewExaminationReservationCopyWithImpl<$Res>
    implements _$$_NewExaminationReservationCopyWith<$Res> {
  __$$_NewExaminationReservationCopyWithImpl(
      _$_NewExaminationReservation _value,
      $Res Function(_$_NewExaminationReservation) _then)
      : super(_value, (v) => _then(v as _$_NewExaminationReservation));

  @override
  _$_NewExaminationReservation get _value =>
      super._value as _$_NewExaminationReservation;

  @override
  $Res call({
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? patientProblem = freezed,
    Object? doctorId = freezed,
    Object? patientId = freezed,
  }) {
    return _then(_$_NewExaminationReservation(
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientProblem: patientProblem == freezed
          ? _value.patientProblem
          : patientProblem // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewExaminationReservation
    with DiagnosticableTreeMixin
    implements _NewExaminationReservation {
  const _$_NewExaminationReservation(
      {required this.dateFrom,
      required this.dateTo,
      required this.patientProblem,
      required this.doctorId,
      required this.patientId});

  factory _$_NewExaminationReservation.fromJson(Map<String, dynamic> json) =>
      _$$_NewExaminationReservationFromJson(json);

  @override
  final DateTime dateFrom;
  @override
  final DateTime dateTo;
  @override
  final String patientProblem;
  @override
  final String doctorId;
  @override
  final String patientId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewExaminationReservation(dateFrom: $dateFrom, dateTo: $dateTo, patientProblem: $patientProblem, doctorId: $doctorId, patientId: $patientId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewExaminationReservation'))
      ..add(DiagnosticsProperty('dateFrom', dateFrom))
      ..add(DiagnosticsProperty('dateTo', dateTo))
      ..add(DiagnosticsProperty('patientProblem', patientProblem))
      ..add(DiagnosticsProperty('doctorId', doctorId))
      ..add(DiagnosticsProperty('patientId', patientId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewExaminationReservation &&
            const DeepCollectionEquality().equals(other.dateFrom, dateFrom) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality()
                .equals(other.patientProblem, patientProblem) &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId) &&
            const DeepCollectionEquality().equals(other.patientId, patientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateFrom),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(patientProblem),
      const DeepCollectionEquality().hash(doctorId),
      const DeepCollectionEquality().hash(patientId));

  @JsonKey(ignore: true)
  @override
  _$$_NewExaminationReservationCopyWith<_$_NewExaminationReservation>
      get copyWith => __$$_NewExaminationReservationCopyWithImpl<
          _$_NewExaminationReservation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewExaminationReservationToJson(
      this,
    );
  }
}

abstract class _NewExaminationReservation implements NewExaminationReservation {
  const factory _NewExaminationReservation(
      {required final DateTime dateFrom,
      required final DateTime dateTo,
      required final String patientProblem,
      required final String doctorId,
      required final String patientId}) = _$_NewExaminationReservation;

  factory _NewExaminationReservation.fromJson(Map<String, dynamic> json) =
      _$_NewExaminationReservation.fromJson;

  @override
  DateTime get dateFrom;
  @override
  DateTime get dateTo;
  @override
  String get patientProblem;
  @override
  String get doctorId;
  @override
  String get patientId;
  @override
  @JsonKey(ignore: true)
  _$$_NewExaminationReservationCopyWith<_$_NewExaminationReservation>
      get copyWith => throw _privateConstructorUsedError;
}

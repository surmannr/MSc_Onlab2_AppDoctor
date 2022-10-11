// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'referral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Referral _$ReferralFromJson(Map<String, dynamic> json) {
  return _Referral.fromJson(json);
}

/// @nodoc
mixin _$Referral {
  String get id => throw _privateConstructorUsedError;
  String get examinationReservationId => throw _privateConstructorUsedError;
  ExaminationReservation get examinationReservation =>
      throw _privateConstructorUsedError;
  String get diagnoses => throw _privateConstructorUsedError;
  DateTime get examinationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralCopyWith<Referral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCopyWith<$Res> {
  factory $ReferralCopyWith(Referral value, $Res Function(Referral) then) =
      _$ReferralCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String examinationReservationId,
      ExaminationReservation examinationReservation,
      String diagnoses,
      DateTime examinationDate});

  $ExaminationReservationCopyWith<$Res> get examinationReservation;
}

/// @nodoc
class _$ReferralCopyWithImpl<$Res> implements $ReferralCopyWith<$Res> {
  _$ReferralCopyWithImpl(this._value, this._then);

  final Referral _value;
  // ignore: unused_field
  final $Res Function(Referral) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? examinationReservationId = freezed,
    Object? examinationReservation = freezed,
    Object? diagnoses = freezed,
    Object? examinationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examinationReservationId: examinationReservationId == freezed
          ? _value.examinationReservationId
          : examinationReservationId // ignore: cast_nullable_to_non_nullable
              as String,
      examinationReservation: examinationReservation == freezed
          ? _value.examinationReservation
          : examinationReservation // ignore: cast_nullable_to_non_nullable
              as ExaminationReservation,
      diagnoses: diagnoses == freezed
          ? _value.diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as String,
      examinationDate: examinationDate == freezed
          ? _value.examinationDate
          : examinationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $ExaminationReservationCopyWith<$Res> get examinationReservation {
    return $ExaminationReservationCopyWith<$Res>(_value.examinationReservation,
        (value) {
      return _then(_value.copyWith(examinationReservation: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReferralCopyWith<$Res> implements $ReferralCopyWith<$Res> {
  factory _$$_ReferralCopyWith(
          _$_Referral value, $Res Function(_$_Referral) then) =
      __$$_ReferralCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String examinationReservationId,
      ExaminationReservation examinationReservation,
      String diagnoses,
      DateTime examinationDate});

  @override
  $ExaminationReservationCopyWith<$Res> get examinationReservation;
}

/// @nodoc
class __$$_ReferralCopyWithImpl<$Res> extends _$ReferralCopyWithImpl<$Res>
    implements _$$_ReferralCopyWith<$Res> {
  __$$_ReferralCopyWithImpl(
      _$_Referral _value, $Res Function(_$_Referral) _then)
      : super(_value, (v) => _then(v as _$_Referral));

  @override
  _$_Referral get _value => super._value as _$_Referral;

  @override
  $Res call({
    Object? id = freezed,
    Object? examinationReservationId = freezed,
    Object? examinationReservation = freezed,
    Object? diagnoses = freezed,
    Object? examinationDate = freezed,
  }) {
    return _then(_$_Referral(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      examinationReservationId: examinationReservationId == freezed
          ? _value.examinationReservationId
          : examinationReservationId // ignore: cast_nullable_to_non_nullable
              as String,
      examinationReservation: examinationReservation == freezed
          ? _value.examinationReservation
          : examinationReservation // ignore: cast_nullable_to_non_nullable
              as ExaminationReservation,
      diagnoses: diagnoses == freezed
          ? _value.diagnoses
          : diagnoses // ignore: cast_nullable_to_non_nullable
              as String,
      examinationDate: examinationDate == freezed
          ? _value.examinationDate
          : examinationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Referral with DiagnosticableTreeMixin implements _Referral {
  const _$_Referral(
      {required this.id,
      required this.examinationReservationId,
      required this.examinationReservation,
      required this.diagnoses,
      required this.examinationDate});

  factory _$_Referral.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralFromJson(json);

  @override
  final String id;
  @override
  final String examinationReservationId;
  @override
  final ExaminationReservation examinationReservation;
  @override
  final String diagnoses;
  @override
  final DateTime examinationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Referral(id: $id, examinationReservationId: $examinationReservationId, examinationReservation: $examinationReservation, diagnoses: $diagnoses, examinationDate: $examinationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Referral'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty(
          'examinationReservationId', examinationReservationId))
      ..add(
          DiagnosticsProperty('examinationReservation', examinationReservation))
      ..add(DiagnosticsProperty('diagnoses', diagnoses))
      ..add(DiagnosticsProperty('examinationDate', examinationDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Referral &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(
                other.examinationReservationId, examinationReservationId) &&
            const DeepCollectionEquality()
                .equals(other.examinationReservation, examinationReservation) &&
            const DeepCollectionEquality().equals(other.diagnoses, diagnoses) &&
            const DeepCollectionEquality()
                .equals(other.examinationDate, examinationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(examinationReservationId),
      const DeepCollectionEquality().hash(examinationReservation),
      const DeepCollectionEquality().hash(diagnoses),
      const DeepCollectionEquality().hash(examinationDate));

  @JsonKey(ignore: true)
  @override
  _$$_ReferralCopyWith<_$_Referral> get copyWith =>
      __$$_ReferralCopyWithImpl<_$_Referral>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralToJson(
      this,
    );
  }
}

abstract class _Referral implements Referral {
  const factory _Referral(
      {required final String id,
      required final String examinationReservationId,
      required final ExaminationReservation examinationReservation,
      required final String diagnoses,
      required final DateTime examinationDate}) = _$_Referral;

  factory _Referral.fromJson(Map<String, dynamic> json) = _$_Referral.fromJson;

  @override
  String get id;
  @override
  String get examinationReservationId;
  @override
  ExaminationReservation get examinationReservation;
  @override
  String get diagnoses;
  @override
  DateTime get examinationDate;
  @override
  @JsonKey(ignore: true)
  _$$_ReferralCopyWith<_$_Referral> get copyWith =>
      throw _privateConstructorUsedError;
}

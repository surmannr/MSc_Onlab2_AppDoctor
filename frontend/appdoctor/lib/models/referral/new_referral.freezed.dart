// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_referral.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReferral _$NewReferralFromJson(Map<String, dynamic> json) {
  return _NewReferral.fromJson(json);
}

/// @nodoc
mixin _$NewReferral {
  String get examinationReservationId => throw _privateConstructorUsedError;
  String get diagnoses => throw _privateConstructorUsedError;
  DateTime get examinationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReferralCopyWith<NewReferral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReferralCopyWith<$Res> {
  factory $NewReferralCopyWith(
          NewReferral value, $Res Function(NewReferral) then) =
      _$NewReferralCopyWithImpl<$Res>;
  $Res call(
      {String examinationReservationId,
      String diagnoses,
      DateTime examinationDate});
}

/// @nodoc
class _$NewReferralCopyWithImpl<$Res> implements $NewReferralCopyWith<$Res> {
  _$NewReferralCopyWithImpl(this._value, this._then);

  final NewReferral _value;
  // ignore: unused_field
  final $Res Function(NewReferral) _then;

  @override
  $Res call({
    Object? examinationReservationId = freezed,
    Object? diagnoses = freezed,
    Object? examinationDate = freezed,
  }) {
    return _then(_value.copyWith(
      examinationReservationId: examinationReservationId == freezed
          ? _value.examinationReservationId
          : examinationReservationId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_NewReferralCopyWith<$Res>
    implements $NewReferralCopyWith<$Res> {
  factory _$$_NewReferralCopyWith(
          _$_NewReferral value, $Res Function(_$_NewReferral) then) =
      __$$_NewReferralCopyWithImpl<$Res>;
  @override
  $Res call(
      {String examinationReservationId,
      String diagnoses,
      DateTime examinationDate});
}

/// @nodoc
class __$$_NewReferralCopyWithImpl<$Res> extends _$NewReferralCopyWithImpl<$Res>
    implements _$$_NewReferralCopyWith<$Res> {
  __$$_NewReferralCopyWithImpl(
      _$_NewReferral _value, $Res Function(_$_NewReferral) _then)
      : super(_value, (v) => _then(v as _$_NewReferral));

  @override
  _$_NewReferral get _value => super._value as _$_NewReferral;

  @override
  $Res call({
    Object? examinationReservationId = freezed,
    Object? diagnoses = freezed,
    Object? examinationDate = freezed,
  }) {
    return _then(_$_NewReferral(
      examinationReservationId: examinationReservationId == freezed
          ? _value.examinationReservationId
          : examinationReservationId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_NewReferral with DiagnosticableTreeMixin implements _NewReferral {
  const _$_NewReferral(
      {required this.examinationReservationId,
      required this.diagnoses,
      required this.examinationDate});

  factory _$_NewReferral.fromJson(Map<String, dynamic> json) =>
      _$$_NewReferralFromJson(json);

  @override
  final String examinationReservationId;
  @override
  final String diagnoses;
  @override
  final DateTime examinationDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewReferral(examinationReservationId: $examinationReservationId, diagnoses: $diagnoses, examinationDate: $examinationDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewReferral'))
      ..add(DiagnosticsProperty(
          'examinationReservationId', examinationReservationId))
      ..add(DiagnosticsProperty('diagnoses', diagnoses))
      ..add(DiagnosticsProperty('examinationDate', examinationDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReferral &&
            const DeepCollectionEquality().equals(
                other.examinationReservationId, examinationReservationId) &&
            const DeepCollectionEquality().equals(other.diagnoses, diagnoses) &&
            const DeepCollectionEquality()
                .equals(other.examinationDate, examinationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(examinationReservationId),
      const DeepCollectionEquality().hash(diagnoses),
      const DeepCollectionEquality().hash(examinationDate));

  @JsonKey(ignore: true)
  @override
  _$$_NewReferralCopyWith<_$_NewReferral> get copyWith =>
      __$$_NewReferralCopyWithImpl<_$_NewReferral>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReferralToJson(
      this,
    );
  }
}

abstract class _NewReferral implements NewReferral {
  const factory _NewReferral(
      {required final String examinationReservationId,
      required final String diagnoses,
      required final DateTime examinationDate}) = _$_NewReferral;

  factory _NewReferral.fromJson(Map<String, dynamic> json) =
      _$_NewReferral.fromJson;

  @override
  String get examinationReservationId;
  @override
  String get diagnoses;
  @override
  DateTime get examinationDate;
  @override
  @JsonKey(ignore: true)
  _$$_NewReferralCopyWith<_$_NewReferral> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get namePrefix => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  List<Receipt> get doctorReceipts => throw _privateConstructorUsedError;
  List<ExaminationReservation> get doctorExaminationReservations =>
      throw _privateConstructorUsedError;
  List<Referral> get doctorReferrals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String namePrefix,
      String address,
      DateTime birthDate,
      List<Receipt> doctorReceipts,
      List<ExaminationReservation> doctorExaminationReservations,
      List<Referral> doctorReferrals});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res> implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  final Doctor _value;
  // ignore: unused_field
  final $Res Function(Doctor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? namePrefix = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
    Object? doctorReceipts = freezed,
    Object? doctorExaminationReservations = freezed,
    Object? doctorReferrals = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      namePrefix: namePrefix == freezed
          ? _value.namePrefix
          : namePrefix // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doctorReceipts: doctorReceipts == freezed
          ? _value.doctorReceipts
          : doctorReceipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      doctorExaminationReservations: doctorExaminationReservations == freezed
          ? _value.doctorExaminationReservations
          : doctorExaminationReservations // ignore: cast_nullable_to_non_nullable
              as List<ExaminationReservation>,
      doctorReferrals: doctorReferrals == freezed
          ? _value.doctorReferrals
          : doctorReferrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
    ));
  }
}

/// @nodoc
abstract class _$$_DoctorCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$_DoctorCopyWith(_$_Doctor value, $Res Function(_$_Doctor) then) =
      __$$_DoctorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String namePrefix,
      String address,
      DateTime birthDate,
      List<Receipt> doctorReceipts,
      List<ExaminationReservation> doctorExaminationReservations,
      List<Referral> doctorReferrals});
}

/// @nodoc
class __$$_DoctorCopyWithImpl<$Res> extends _$DoctorCopyWithImpl<$Res>
    implements _$$_DoctorCopyWith<$Res> {
  __$$_DoctorCopyWithImpl(_$_Doctor _value, $Res Function(_$_Doctor) _then)
      : super(_value, (v) => _then(v as _$_Doctor));

  @override
  _$_Doctor get _value => super._value as _$_Doctor;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? namePrefix = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
    Object? doctorReceipts = freezed,
    Object? doctorExaminationReservations = freezed,
    Object? doctorReferrals = freezed,
  }) {
    return _then(_$_Doctor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      namePrefix: namePrefix == freezed
          ? _value.namePrefix
          : namePrefix // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doctorReceipts: doctorReceipts == freezed
          ? _value._doctorReceipts
          : doctorReceipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      doctorExaminationReservations: doctorExaminationReservations == freezed
          ? _value._doctorExaminationReservations
          : doctorExaminationReservations // ignore: cast_nullable_to_non_nullable
              as List<ExaminationReservation>,
      doctorReferrals: doctorReferrals == freezed
          ? _value._doctorReferrals
          : doctorReferrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Doctor with DiagnosticableTreeMixin implements _Doctor {
  const _$_Doctor(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.namePrefix,
      required this.address,
      required this.birthDate,
      required final List<Receipt> doctorReceipts,
      required final List<ExaminationReservation> doctorExaminationReservations,
      required final List<Referral> doctorReferrals})
      : _doctorReceipts = doctorReceipts,
        _doctorExaminationReservations = doctorExaminationReservations,
        _doctorReferrals = doctorReferrals;

  factory _$_Doctor.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String namePrefix;
  @override
  final String address;
  @override
  final DateTime birthDate;
  final List<Receipt> _doctorReceipts;
  @override
  List<Receipt> get doctorReceipts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorReceipts);
  }

  final List<ExaminationReservation> _doctorExaminationReservations;
  @override
  List<ExaminationReservation> get doctorExaminationReservations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorExaminationReservations);
  }

  final List<Referral> _doctorReferrals;
  @override
  List<Referral> get doctorReferrals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorReferrals);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Doctor(id: $id, firstName: $firstName, lastName: $lastName, namePrefix: $namePrefix, address: $address, birthDate: $birthDate, doctorReceipts: $doctorReceipts, doctorExaminationReservations: $doctorExaminationReservations, doctorReferrals: $doctorReferrals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Doctor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('namePrefix', namePrefix))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('doctorReceipts', doctorReceipts))
      ..add(DiagnosticsProperty(
          'doctorExaminationReservations', doctorExaminationReservations))
      ..add(DiagnosticsProperty('doctorReferrals', doctorReferrals));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Doctor &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.namePrefix, namePrefix) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality()
                .equals(other._doctorReceipts, _doctorReceipts) &&
            const DeepCollectionEquality().equals(
                other._doctorExaminationReservations,
                _doctorExaminationReservations) &&
            const DeepCollectionEquality()
                .equals(other._doctorReferrals, _doctorReferrals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(namePrefix),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(birthDate),
      const DeepCollectionEquality().hash(_doctorReceipts),
      const DeepCollectionEquality().hash(_doctorExaminationReservations),
      const DeepCollectionEquality().hash(_doctorReferrals));

  @JsonKey(ignore: true)
  @override
  _$$_DoctorCopyWith<_$_Doctor> get copyWith =>
      __$$_DoctorCopyWithImpl<_$_Doctor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String namePrefix,
      required final String address,
      required final DateTime birthDate,
      required final List<Receipt> doctorReceipts,
      required final List<ExaminationReservation> doctorExaminationReservations,
      required final List<Referral> doctorReferrals}) = _$_Doctor;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$_Doctor.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get namePrefix;
  @override
  String get address;
  @override
  DateTime get birthDate;
  @override
  List<Receipt> get doctorReceipts;
  @override
  List<ExaminationReservation> get doctorExaminationReservations;
  @override
  List<Referral> get doctorReferrals;
  @override
  @JsonKey(ignore: true)
  _$$_DoctorCopyWith<_$_Doctor> get copyWith =>
      throw _privateConstructorUsedError;
}

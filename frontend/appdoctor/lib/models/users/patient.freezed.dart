// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get namePrefix => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  List<Receipt> get patientsReceipts => throw _privateConstructorUsedError;
  List<ExaminationReservation> get patientsExaminationReservations =>
      throw _privateConstructorUsedError;
  List<Referral> get patientsReferrals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String namePrefix,
      String address,
      DateTime birthDate,
      List<Receipt> patientsReceipts,
      List<ExaminationReservation> patientsExaminationReservations,
      List<Referral> patientsReferrals});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res> implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  final Patient _value;
  // ignore: unused_field
  final $Res Function(Patient) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? namePrefix = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
    Object? patientsReceipts = freezed,
    Object? patientsExaminationReservations = freezed,
    Object? patientsReferrals = freezed,
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
      patientsReceipts: patientsReceipts == freezed
          ? _value.patientsReceipts
          : patientsReceipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      patientsExaminationReservations: patientsExaminationReservations ==
              freezed
          ? _value.patientsExaminationReservations
          : patientsExaminationReservations // ignore: cast_nullable_to_non_nullable
              as List<ExaminationReservation>,
      patientsReferrals: patientsReferrals == freezed
          ? _value.patientsReferrals
          : patientsReferrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
    ));
  }
}

/// @nodoc
abstract class _$$_PatientCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$_PatientCopyWith(
          _$_Patient value, $Res Function(_$_Patient) then) =
      __$$_PatientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String namePrefix,
      String address,
      DateTime birthDate,
      List<Receipt> patientsReceipts,
      List<ExaminationReservation> patientsExaminationReservations,
      List<Referral> patientsReferrals});
}

/// @nodoc
class __$$_PatientCopyWithImpl<$Res> extends _$PatientCopyWithImpl<$Res>
    implements _$$_PatientCopyWith<$Res> {
  __$$_PatientCopyWithImpl(_$_Patient _value, $Res Function(_$_Patient) _then)
      : super(_value, (v) => _then(v as _$_Patient));

  @override
  _$_Patient get _value => super._value as _$_Patient;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? namePrefix = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
    Object? patientsReceipts = freezed,
    Object? patientsExaminationReservations = freezed,
    Object? patientsReferrals = freezed,
  }) {
    return _then(_$_Patient(
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
      patientsReceipts: patientsReceipts == freezed
          ? _value._patientsReceipts
          : patientsReceipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
      patientsExaminationReservations: patientsExaminationReservations ==
              freezed
          ? _value._patientsExaminationReservations
          : patientsExaminationReservations // ignore: cast_nullable_to_non_nullable
              as List<ExaminationReservation>,
      patientsReferrals: patientsReferrals == freezed
          ? _value._patientsReferrals
          : patientsReferrals // ignore: cast_nullable_to_non_nullable
              as List<Referral>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Patient with DiagnosticableTreeMixin implements _Patient {
  const _$_Patient(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.namePrefix,
      required this.address,
      required this.birthDate,
      required final List<Receipt> patientsReceipts,
      required final List<ExaminationReservation>
          patientsExaminationReservations,
      required final List<Referral> patientsReferrals})
      : _patientsReceipts = patientsReceipts,
        _patientsExaminationReservations = patientsExaminationReservations,
        _patientsReferrals = patientsReferrals;

  factory _$_Patient.fromJson(Map<String, dynamic> json) =>
      _$$_PatientFromJson(json);

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
  final List<Receipt> _patientsReceipts;
  @override
  List<Receipt> get patientsReceipts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patientsReceipts);
  }

  final List<ExaminationReservation> _patientsExaminationReservations;
  @override
  List<ExaminationReservation> get patientsExaminationReservations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patientsExaminationReservations);
  }

  final List<Referral> _patientsReferrals;
  @override
  List<Referral> get patientsReferrals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patientsReferrals);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patient(id: $id, firstName: $firstName, lastName: $lastName, namePrefix: $namePrefix, address: $address, birthDate: $birthDate, patientsReceipts: $patientsReceipts, patientsExaminationReservations: $patientsExaminationReservations, patientsReferrals: $patientsReferrals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patient'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('namePrefix', namePrefix))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('patientsReceipts', patientsReceipts))
      ..add(DiagnosticsProperty(
          'patientsExaminationReservations', patientsExaminationReservations))
      ..add(DiagnosticsProperty('patientsReferrals', patientsReferrals));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Patient &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.namePrefix, namePrefix) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality()
                .equals(other._patientsReceipts, _patientsReceipts) &&
            const DeepCollectionEquality().equals(
                other._patientsExaminationReservations,
                _patientsExaminationReservations) &&
            const DeepCollectionEquality()
                .equals(other._patientsReferrals, _patientsReferrals));
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
      const DeepCollectionEquality().hash(_patientsReceipts),
      const DeepCollectionEquality().hash(_patientsExaminationReservations),
      const DeepCollectionEquality().hash(_patientsReferrals));

  @JsonKey(ignore: true)
  @override
  _$$_PatientCopyWith<_$_Patient> get copyWith =>
      __$$_PatientCopyWithImpl<_$_Patient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String namePrefix,
      required final String address,
      required final DateTime birthDate,
      required final List<Receipt> patientsReceipts,
      required final List<ExaminationReservation>
          patientsExaminationReservations,
      required final List<Referral> patientsReferrals}) = _$_Patient;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$_Patient.fromJson;

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
  List<Receipt> get patientsReceipts;
  @override
  List<ExaminationReservation> get patientsExaminationReservations;
  @override
  List<Referral> get patientsReferrals;
  @override
  @JsonKey(ignore: true)
  _$$_PatientCopyWith<_$_Patient> get copyWith =>
      throw _privateConstructorUsedError;
}

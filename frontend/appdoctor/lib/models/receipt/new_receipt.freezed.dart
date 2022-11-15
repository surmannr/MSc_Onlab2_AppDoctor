// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReceipt _$NewReceiptFromJson(Map<String, dynamic> json) {
  return _NewReceipt.fromJson(json);
}

/// @nodoc
mixin _$NewReceipt {
  DateTime get date => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  List<MedicineReceipt> get medicines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReceiptCopyWith<NewReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReceiptCopyWith<$Res> {
  factory $NewReceiptCopyWith(
          NewReceipt value, $Res Function(NewReceipt) then) =
      _$NewReceiptCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String patientId,
      String doctorId,
      List<MedicineReceipt> medicines});
}

/// @nodoc
class _$NewReceiptCopyWithImpl<$Res> implements $NewReceiptCopyWith<$Res> {
  _$NewReceiptCopyWithImpl(this._value, this._then);

  final NewReceipt _value;
  // ignore: unused_field
  final $Res Function(NewReceipt) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? patientId = freezed,
    Object? doctorId = freezed,
    Object? medicines = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      medicines: medicines == freezed
          ? _value.medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicineReceipt>,
    ));
  }
}

/// @nodoc
abstract class _$$_NewReceiptCopyWith<$Res>
    implements $NewReceiptCopyWith<$Res> {
  factory _$$_NewReceiptCopyWith(
          _$_NewReceipt value, $Res Function(_$_NewReceipt) then) =
      __$$_NewReceiptCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String patientId,
      String doctorId,
      List<MedicineReceipt> medicines});
}

/// @nodoc
class __$$_NewReceiptCopyWithImpl<$Res> extends _$NewReceiptCopyWithImpl<$Res>
    implements _$$_NewReceiptCopyWith<$Res> {
  __$$_NewReceiptCopyWithImpl(
      _$_NewReceipt _value, $Res Function(_$_NewReceipt) _then)
      : super(_value, (v) => _then(v as _$_NewReceipt));

  @override
  _$_NewReceipt get _value => super._value as _$_NewReceipt;

  @override
  $Res call({
    Object? date = freezed,
    Object? patientId = freezed,
    Object? doctorId = freezed,
    Object? medicines = freezed,
  }) {
    return _then(_$_NewReceipt(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      medicines: medicines == freezed
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicineReceipt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewReceipt implements _NewReceipt {
  const _$_NewReceipt(
      {required this.date,
      required this.patientId,
      required this.doctorId,
      required final List<MedicineReceipt> medicines})
      : _medicines = medicines;

  factory _$_NewReceipt.fromJson(Map<String, dynamic> json) =>
      _$$_NewReceiptFromJson(json);

  @override
  final DateTime date;
  @override
  final String patientId;
  @override
  final String doctorId;
  final List<MedicineReceipt> _medicines;
  @override
  List<MedicineReceipt> get medicines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  String toString() {
    return 'NewReceipt(date: $date, patientId: $patientId, doctorId: $doctorId, medicines: $medicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReceipt &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId) &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(doctorId),
      const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  _$$_NewReceiptCopyWith<_$_NewReceipt> get copyWith =>
      __$$_NewReceiptCopyWithImpl<_$_NewReceipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReceiptToJson(
      this,
    );
  }
}

abstract class _NewReceipt implements NewReceipt {
  const factory _NewReceipt(
      {required final DateTime date,
      required final String patientId,
      required final String doctorId,
      required final List<MedicineReceipt> medicines}) = _$_NewReceipt;

  factory _NewReceipt.fromJson(Map<String, dynamic> json) =
      _$_NewReceipt.fromJson;

  @override
  DateTime get date;
  @override
  String get patientId;
  @override
  String get doctorId;
  @override
  List<MedicineReceipt> get medicines;
  @override
  @JsonKey(ignore: true)
  _$$_NewReceiptCopyWith<_$_NewReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

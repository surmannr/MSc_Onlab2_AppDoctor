// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Receipt _$ReceiptFromJson(Map<String, dynamic> json) {
  return _Receipt.fromJson(json);
}

/// @nodoc
mixin _$Receipt {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get patientFullName => throw _privateConstructorUsedError;
  String get doctorFullName => throw _privateConstructorUsedError;
  List<MedicineReceipt> get medicines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime date,
      String patientFullName,
      String doctorFullName,
      List<MedicineReceipt> medicines});
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res> implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  final Receipt _value;
  // ignore: unused_field
  final $Res Function(Receipt) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? patientFullName = freezed,
    Object? doctorFullName = freezed,
    Object? medicines = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientFullName: patientFullName == freezed
          ? _value.patientFullName
          : patientFullName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorFullName: doctorFullName == freezed
          ? _value.doctorFullName
          : doctorFullName // ignore: cast_nullable_to_non_nullable
              as String,
      medicines: medicines == freezed
          ? _value.medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicineReceipt>,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceiptCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$_ReceiptCopyWith(
          _$_Receipt value, $Res Function(_$_Receipt) then) =
      __$$_ReceiptCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime date,
      String patientFullName,
      String doctorFullName,
      List<MedicineReceipt> medicines});
}

/// @nodoc
class __$$_ReceiptCopyWithImpl<$Res> extends _$ReceiptCopyWithImpl<$Res>
    implements _$$_ReceiptCopyWith<$Res> {
  __$$_ReceiptCopyWithImpl(_$_Receipt _value, $Res Function(_$_Receipt) _then)
      : super(_value, (v) => _then(v as _$_Receipt));

  @override
  _$_Receipt get _value => super._value as _$_Receipt;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? patientFullName = freezed,
    Object? doctorFullName = freezed,
    Object? medicines = freezed,
  }) {
    return _then(_$_Receipt(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientFullName: patientFullName == freezed
          ? _value.patientFullName
          : patientFullName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorFullName: doctorFullName == freezed
          ? _value.doctorFullName
          : doctorFullName // ignore: cast_nullable_to_non_nullable
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
class _$_Receipt with DiagnosticableTreeMixin implements _Receipt {
  const _$_Receipt(
      {required this.id,
      required this.date,
      required this.patientFullName,
      required this.doctorFullName,
      required final List<MedicineReceipt> medicines})
      : _medicines = medicines;

  factory _$_Receipt.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String patientFullName;
  @override
  final String doctorFullName;
  final List<MedicineReceipt> _medicines;
  @override
  List<MedicineReceipt> get medicines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Receipt(id: $id, date: $date, patientFullName: $patientFullName, doctorFullName: $doctorFullName, medicines: $medicines)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Receipt'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('patientFullName', patientFullName))
      ..add(DiagnosticsProperty('doctorFullName', doctorFullName))
      ..add(DiagnosticsProperty('medicines', medicines));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receipt &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.patientFullName, patientFullName) &&
            const DeepCollectionEquality()
                .equals(other.doctorFullName, doctorFullName) &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(patientFullName),
      const DeepCollectionEquality().hash(doctorFullName),
      const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      __$$_ReceiptCopyWithImpl<_$_Receipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptToJson(
      this,
    );
  }
}

abstract class _Receipt implements Receipt {
  const factory _Receipt(
      {required final String id,
      required final DateTime date,
      required final String patientFullName,
      required final String doctorFullName,
      required final List<MedicineReceipt> medicines}) = _$_Receipt;

  factory _Receipt.fromJson(Map<String, dynamic> json) = _$_Receipt.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  String get patientFullName;
  @override
  String get doctorFullName;
  @override
  List<MedicineReceipt> get medicines;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      throw _privateConstructorUsedError;
}

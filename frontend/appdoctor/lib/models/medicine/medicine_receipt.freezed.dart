// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medicine_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineReceipt _$MedicineReceiptFromJson(Map<String, dynamic> json) {
  return _MedicineReceipt.fromJson(json);
}

/// @nodoc
mixin _$MedicineReceipt {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineReceiptCopyWith<MedicineReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineReceiptCopyWith<$Res> {
  factory $MedicineReceiptCopyWith(
          MedicineReceipt value, $Res Function(MedicineReceipt) then) =
      _$MedicineReceiptCopyWithImpl<$Res>;
  $Res call({int id, String name, int quantity});
}

/// @nodoc
class _$MedicineReceiptCopyWithImpl<$Res>
    implements $MedicineReceiptCopyWith<$Res> {
  _$MedicineReceiptCopyWithImpl(this._value, this._then);

  final MedicineReceipt _value;
  // ignore: unused_field
  final $Res Function(MedicineReceipt) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MedicineReceiptCopyWith<$Res>
    implements $MedicineReceiptCopyWith<$Res> {
  factory _$$_MedicineReceiptCopyWith(
          _$_MedicineReceipt value, $Res Function(_$_MedicineReceipt) then) =
      __$$_MedicineReceiptCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int quantity});
}

/// @nodoc
class __$$_MedicineReceiptCopyWithImpl<$Res>
    extends _$MedicineReceiptCopyWithImpl<$Res>
    implements _$$_MedicineReceiptCopyWith<$Res> {
  __$$_MedicineReceiptCopyWithImpl(
      _$_MedicineReceipt _value, $Res Function(_$_MedicineReceipt) _then)
      : super(_value, (v) => _then(v as _$_MedicineReceipt));

  @override
  _$_MedicineReceipt get _value => super._value as _$_MedicineReceipt;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_MedicineReceipt(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineReceipt implements _MedicineReceipt {
  const _$_MedicineReceipt(
      {required this.id, required this.name, required this.quantity});

  factory _$_MedicineReceipt.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineReceiptFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int quantity;

  @override
  String toString() {
    return 'MedicineReceipt(id: $id, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineReceipt &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_MedicineReceiptCopyWith<_$_MedicineReceipt> get copyWith =>
      __$$_MedicineReceiptCopyWithImpl<_$_MedicineReceipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineReceiptToJson(
      this,
    );
  }
}

abstract class _MedicineReceipt implements MedicineReceipt {
  const factory _MedicineReceipt(
      {required final int id,
      required final String name,
      required final int quantity}) = _$_MedicineReceipt;

  factory _MedicineReceipt.fromJson(Map<String, dynamic> json) =
      _$_MedicineReceipt.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineReceiptCopyWith<_$_MedicineReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

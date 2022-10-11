// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medicine_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicinePreview _$MedicinePreviewFromJson(Map<String, dynamic> json) {
  return _MedicinePreview.fromJson(json);
}

/// @nodoc
mixin _$MedicinePreview {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicinePreviewCopyWith<MedicinePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicinePreviewCopyWith<$Res> {
  factory $MedicinePreviewCopyWith(
          MedicinePreview value, $Res Function(MedicinePreview) then) =
      _$MedicinePreviewCopyWithImpl<$Res>;
  $Res call({int id, String name, int quantity});
}

/// @nodoc
class _$MedicinePreviewCopyWithImpl<$Res>
    implements $MedicinePreviewCopyWith<$Res> {
  _$MedicinePreviewCopyWithImpl(this._value, this._then);

  final MedicinePreview _value;
  // ignore: unused_field
  final $Res Function(MedicinePreview) _then;

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
abstract class _$$_MedicinePreviewCopyWith<$Res>
    implements $MedicinePreviewCopyWith<$Res> {
  factory _$$_MedicinePreviewCopyWith(
          _$_MedicinePreview value, $Res Function(_$_MedicinePreview) then) =
      __$$_MedicinePreviewCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int quantity});
}

/// @nodoc
class __$$_MedicinePreviewCopyWithImpl<$Res>
    extends _$MedicinePreviewCopyWithImpl<$Res>
    implements _$$_MedicinePreviewCopyWith<$Res> {
  __$$_MedicinePreviewCopyWithImpl(
      _$_MedicinePreview _value, $Res Function(_$_MedicinePreview) _then)
      : super(_value, (v) => _then(v as _$_MedicinePreview));

  @override
  _$_MedicinePreview get _value => super._value as _$_MedicinePreview;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_MedicinePreview(
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
class _$_MedicinePreview
    with DiagnosticableTreeMixin
    implements _MedicinePreview {
  const _$_MedicinePreview(
      {required this.id, required this.name, required this.quantity});

  factory _$_MedicinePreview.fromJson(Map<String, dynamic> json) =>
      _$$_MedicinePreviewFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MedicinePreview(id: $id, name: $name, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MedicinePreview'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicinePreview &&
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
  _$$_MedicinePreviewCopyWith<_$_MedicinePreview> get copyWith =>
      __$$_MedicinePreviewCopyWithImpl<_$_MedicinePreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicinePreviewToJson(
      this,
    );
  }
}

abstract class _MedicinePreview implements MedicinePreview {
  const factory _MedicinePreview(
      {required final int id,
      required final String name,
      required final int quantity}) = _$_MedicinePreview;

  factory _MedicinePreview.fromJson(Map<String, dynamic> json) =
      _$_MedicinePreview.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_MedicinePreviewCopyWith<_$_MedicinePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

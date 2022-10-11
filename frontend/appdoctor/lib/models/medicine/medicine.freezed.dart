// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medicine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Medicine _$MedicineFromJson(Map<String, dynamic> json) {
  return _Medicine.fromJson(json);
}

/// @nodoc
mixin _$Medicine {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get inStock => throw _privateConstructorUsedError;
  List<String> get diseasesGoodFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineCopyWith<Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineCopyWith<$Res> {
  factory $MedicineCopyWith(Medicine value, $Res Function(Medicine) then) =
      _$MedicineCopyWithImpl<$Res>;
  $Res call({int id, String name, int inStock, List<String> diseasesGoodFor});
}

/// @nodoc
class _$MedicineCopyWithImpl<$Res> implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

  final Medicine _value;
  // ignore: unused_field
  final $Res Function(Medicine) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? inStock = freezed,
    Object? diseasesGoodFor = freezed,
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
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      diseasesGoodFor: diseasesGoodFor == freezed
          ? _value.diseasesGoodFor
          : diseasesGoodFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_MedicineCopyWith<$Res> implements $MedicineCopyWith<$Res> {
  factory _$$_MedicineCopyWith(
          _$_Medicine value, $Res Function(_$_Medicine) then) =
      __$$_MedicineCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int inStock, List<String> diseasesGoodFor});
}

/// @nodoc
class __$$_MedicineCopyWithImpl<$Res> extends _$MedicineCopyWithImpl<$Res>
    implements _$$_MedicineCopyWith<$Res> {
  __$$_MedicineCopyWithImpl(
      _$_Medicine _value, $Res Function(_$_Medicine) _then)
      : super(_value, (v) => _then(v as _$_Medicine));

  @override
  _$_Medicine get _value => super._value as _$_Medicine;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? inStock = freezed,
    Object? diseasesGoodFor = freezed,
  }) {
    return _then(_$_Medicine(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      inStock: inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      diseasesGoodFor: diseasesGoodFor == freezed
          ? _value._diseasesGoodFor
          : diseasesGoodFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Medicine with DiagnosticableTreeMixin implements _Medicine {
  const _$_Medicine(
      {required this.id,
      required this.name,
      required this.inStock,
      required final List<String> diseasesGoodFor})
      : _diseasesGoodFor = diseasesGoodFor;

  factory _$_Medicine.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int inStock;
  final List<String> _diseasesGoodFor;
  @override
  List<String> get diseasesGoodFor {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diseasesGoodFor);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Medicine(id: $id, name: $name, inStock: $inStock, diseasesGoodFor: $diseasesGoodFor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Medicine'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('inStock', inStock))
      ..add(DiagnosticsProperty('diseasesGoodFor', diseasesGoodFor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Medicine &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.inStock, inStock) &&
            const DeepCollectionEquality()
                .equals(other._diseasesGoodFor, _diseasesGoodFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(inStock),
      const DeepCollectionEquality().hash(_diseasesGoodFor));

  @JsonKey(ignore: true)
  @override
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      __$$_MedicineCopyWithImpl<_$_Medicine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineToJson(
      this,
    );
  }
}

abstract class _Medicine implements Medicine {
  const factory _Medicine(
      {required final int id,
      required final String name,
      required final int inStock,
      required final List<String> diseasesGoodFor}) = _$_Medicine;

  factory _Medicine.fromJson(Map<String, dynamic> json) = _$_Medicine.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get inStock;
  @override
  List<String> get diseasesGoodFor;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

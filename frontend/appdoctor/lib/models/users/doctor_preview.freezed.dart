// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorPreview _$DoctorPreviewFromJson(Map<String, dynamic> json) {
  return _DoctorPreview.fromJson(json);
}

/// @nodoc
mixin _$DoctorPreview {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get namePrefix => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorPreviewCopyWith<DoctorPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorPreviewCopyWith<$Res> {
  factory $DoctorPreviewCopyWith(
          DoctorPreview value, $Res Function(DoctorPreview) then) =
      _$DoctorPreviewCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String namePrefix,
      String address,
      DateTime birthDate});
}

/// @nodoc
class _$DoctorPreviewCopyWithImpl<$Res>
    implements $DoctorPreviewCopyWith<$Res> {
  _$DoctorPreviewCopyWithImpl(this._value, this._then);

  final DoctorPreview _value;
  // ignore: unused_field
  final $Res Function(DoctorPreview) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? namePrefix = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_DoctorPreviewCopyWith<$Res>
    implements $DoctorPreviewCopyWith<$Res> {
  factory _$$_DoctorPreviewCopyWith(
          _$_DoctorPreview value, $Res Function(_$_DoctorPreview) then) =
      __$$_DoctorPreviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String namePrefix,
      String address,
      DateTime birthDate});
}

/// @nodoc
class __$$_DoctorPreviewCopyWithImpl<$Res>
    extends _$DoctorPreviewCopyWithImpl<$Res>
    implements _$$_DoctorPreviewCopyWith<$Res> {
  __$$_DoctorPreviewCopyWithImpl(
      _$_DoctorPreview _value, $Res Function(_$_DoctorPreview) _then)
      : super(_value, (v) => _then(v as _$_DoctorPreview));

  @override
  _$_DoctorPreview get _value => super._value as _$_DoctorPreview;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? namePrefix = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(_$_DoctorPreview(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoctorPreview with DiagnosticableTreeMixin implements _DoctorPreview {
  const _$_DoctorPreview(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.namePrefix,
      required this.address,
      required this.birthDate});

  factory _$_DoctorPreview.fromJson(Map<String, dynamic> json) =>
      _$$_DoctorPreviewFromJson(json);

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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DoctorPreview(id: $id, firstName: $firstName, lastName: $lastName, namePrefix: $namePrefix, address: $address, birthDate: $birthDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DoctorPreview'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('namePrefix', namePrefix))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('birthDate', birthDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoctorPreview &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.namePrefix, namePrefix) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate));
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
      const DeepCollectionEquality().hash(birthDate));

  @JsonKey(ignore: true)
  @override
  _$$_DoctorPreviewCopyWith<_$_DoctorPreview> get copyWith =>
      __$$_DoctorPreviewCopyWithImpl<_$_DoctorPreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoctorPreviewToJson(
      this,
    );
  }
}

abstract class _DoctorPreview implements DoctorPreview {
  const factory _DoctorPreview(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String namePrefix,
      required final String address,
      required final DateTime birthDate}) = _$_DoctorPreview;

  factory _DoctorPreview.fromJson(Map<String, dynamic> json) =
      _$_DoctorPreview.fromJson;

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
  @JsonKey(ignore: true)
  _$$_DoctorPreviewCopyWith<_$_DoctorPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

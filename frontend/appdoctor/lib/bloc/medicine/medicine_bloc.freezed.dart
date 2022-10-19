// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medicine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicinePreviews,
    required TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)
        addNewMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMedicinePreviews,
    TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)?
        addNewMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicinePreviews,
    TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)?
        addNewMedicine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicinePreviews value) getMedicinePreviews,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMedicinePreviews value)? getMedicinePreviews,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinePreviews value)? getMedicinePreviews,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineEventCopyWith<$Res> {
  factory $MedicineEventCopyWith(
          MedicineEvent value, $Res Function(MedicineEvent) then) =
      _$MedicineEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MedicineEventCopyWithImpl<$Res>
    implements $MedicineEventCopyWith<$Res> {
  _$MedicineEventCopyWithImpl(this._value, this._then);

  final MedicineEvent _value;
  // ignore: unused_field
  final $Res Function(MedicineEvent) _then;
}

/// @nodoc
abstract class _$$_GetMedicinePreviewsCopyWith<$Res> {
  factory _$$_GetMedicinePreviewsCopyWith(_$_GetMedicinePreviews value,
          $Res Function(_$_GetMedicinePreviews) then) =
      __$$_GetMedicinePreviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMedicinePreviewsCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res>
    implements _$$_GetMedicinePreviewsCopyWith<$Res> {
  __$$_GetMedicinePreviewsCopyWithImpl(_$_GetMedicinePreviews _value,
      $Res Function(_$_GetMedicinePreviews) _then)
      : super(_value, (v) => _then(v as _$_GetMedicinePreviews));

  @override
  _$_GetMedicinePreviews get _value => super._value as _$_GetMedicinePreviews;
}

/// @nodoc

class _$_GetMedicinePreviews implements _GetMedicinePreviews {
  const _$_GetMedicinePreviews();

  @override
  String toString() {
    return 'MedicineEvent.getMedicinePreviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetMedicinePreviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicinePreviews,
    required TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)
        addNewMedicine,
  }) {
    return getMedicinePreviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMedicinePreviews,
    TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)?
        addNewMedicine,
  }) {
    return getMedicinePreviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicinePreviews,
    TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)?
        addNewMedicine,
    required TResult orElse(),
  }) {
    if (getMedicinePreviews != null) {
      return getMedicinePreviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicinePreviews value) getMedicinePreviews,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
  }) {
    return getMedicinePreviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMedicinePreviews value)? getMedicinePreviews,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
  }) {
    return getMedicinePreviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinePreviews value)? getMedicinePreviews,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    required TResult orElse(),
  }) {
    if (getMedicinePreviews != null) {
      return getMedicinePreviews(this);
    }
    return orElse();
  }
}

abstract class _GetMedicinePreviews implements MedicineEvent {
  const factory _GetMedicinePreviews() = _$_GetMedicinePreviews;
}

/// @nodoc
abstract class _$$_AddNewMedicineCopyWith<$Res> {
  factory _$$_AddNewMedicineCopyWith(
          _$_AddNewMedicine value, $Res Function(_$_AddNewMedicine) then) =
      __$$_AddNewMedicineCopyWithImpl<$Res>;
  $Res call(
      {String name, int inStock, List<String> diseases, BuildContext context});
}

/// @nodoc
class __$$_AddNewMedicineCopyWithImpl<$Res>
    extends _$MedicineEventCopyWithImpl<$Res>
    implements _$$_AddNewMedicineCopyWith<$Res> {
  __$$_AddNewMedicineCopyWithImpl(
      _$_AddNewMedicine _value, $Res Function(_$_AddNewMedicine) _then)
      : super(_value, (v) => _then(v as _$_AddNewMedicine));

  @override
  _$_AddNewMedicine get _value => super._value as _$_AddNewMedicine;

  @override
  $Res call({
    Object? name = freezed,
    Object? inStock = freezed,
    Object? diseases = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_AddNewMedicine(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      inStock == freezed
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      diseases == freezed
          ? _value._diseases
          : diseases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AddNewMedicine implements _AddNewMedicine {
  const _$_AddNewMedicine(
      this.name, this.inStock, final List<String> diseases, this.context)
      : _diseases = diseases;

  @override
  final String name;
  @override
  final int inStock;
  final List<String> _diseases;
  @override
  List<String> get diseases {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diseases);
  }

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'MedicineEvent.addNewMedicine(name: $name, inStock: $inStock, diseases: $diseases, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewMedicine &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.inStock, inStock) &&
            const DeepCollectionEquality().equals(other._diseases, _diseases) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(inStock),
      const DeepCollectionEquality().hash(_diseases),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewMedicineCopyWith<_$_AddNewMedicine> get copyWith =>
      __$$_AddNewMedicineCopyWithImpl<_$_AddNewMedicine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMedicinePreviews,
    required TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)
        addNewMedicine,
  }) {
    return addNewMedicine(name, inStock, diseases, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMedicinePreviews,
    TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)?
        addNewMedicine,
  }) {
    return addNewMedicine?.call(name, inStock, diseases, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMedicinePreviews,
    TResult Function(String name, int inStock, List<String> diseases,
            BuildContext context)?
        addNewMedicine,
    required TResult orElse(),
  }) {
    if (addNewMedicine != null) {
      return addNewMedicine(name, inStock, diseases, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMedicinePreviews value) getMedicinePreviews,
    required TResult Function(_AddNewMedicine value) addNewMedicine,
  }) {
    return addNewMedicine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMedicinePreviews value)? getMedicinePreviews,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
  }) {
    return addNewMedicine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMedicinePreviews value)? getMedicinePreviews,
    TResult Function(_AddNewMedicine value)? addNewMedicine,
    required TResult orElse(),
  }) {
    if (addNewMedicine != null) {
      return addNewMedicine(this);
    }
    return orElse();
  }
}

abstract class _AddNewMedicine implements MedicineEvent {
  const factory _AddNewMedicine(
      final String name,
      final int inStock,
      final List<String> diseases,
      final BuildContext context) = _$_AddNewMedicine;

  String get name;
  int get inStock;
  List<String> get diseases;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddNewMedicineCopyWith<_$_AddNewMedicine> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicineState _$MedicineStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loadingMedicinePreviews':
      return _LoadingMedicinePreview.fromJson(json);
    case 'loadedMedicinePreviews':
      return _LoadedMedicinePreview.fromJson(json);
    case 'errorMedicinePreview':
      return _ErrorMedicinePreview.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MedicineState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MedicineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMedicinePreviews,
    required TResult Function(List<MedicinePreview> medicines)
        loadedMedicinePreviews,
    required TResult Function(String message) errorMedicinePreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingMedicinePreview value)
        loadingMedicinePreviews,
    required TResult Function(_LoadedMedicinePreview value)
        loadedMedicinePreviews,
    required TResult Function(_ErrorMedicinePreview value) errorMedicinePreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineStateCopyWith<$Res> {
  factory $MedicineStateCopyWith(
          MedicineState value, $Res Function(MedicineState) then) =
      _$MedicineStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MedicineStateCopyWithImpl<$Res>
    implements $MedicineStateCopyWith<$Res> {
  _$MedicineStateCopyWithImpl(this._value, this._then);

  final MedicineState _value;
  // ignore: unused_field
  final $Res Function(MedicineState) _then;
}

/// @nodoc
abstract class _$$_LoadingMedicinePreviewCopyWith<$Res> {
  factory _$$_LoadingMedicinePreviewCopyWith(_$_LoadingMedicinePreview value,
          $Res Function(_$_LoadingMedicinePreview) then) =
      __$$_LoadingMedicinePreviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingMedicinePreviewCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res>
    implements _$$_LoadingMedicinePreviewCopyWith<$Res> {
  __$$_LoadingMedicinePreviewCopyWithImpl(_$_LoadingMedicinePreview _value,
      $Res Function(_$_LoadingMedicinePreview) _then)
      : super(_value, (v) => _then(v as _$_LoadingMedicinePreview));

  @override
  _$_LoadingMedicinePreview get _value =>
      super._value as _$_LoadingMedicinePreview;
}

/// @nodoc
@JsonSerializable()
class _$_LoadingMedicinePreview implements _LoadingMedicinePreview {
  const _$_LoadingMedicinePreview({final String? $type})
      : $type = $type ?? 'loadingMedicinePreviews';

  factory _$_LoadingMedicinePreview.fromJson(Map<String, dynamic> json) =>
      _$$_LoadingMedicinePreviewFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MedicineState.loadingMedicinePreviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingMedicinePreview);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMedicinePreviews,
    required TResult Function(List<MedicinePreview> medicines)
        loadedMedicinePreviews,
    required TResult Function(String message) errorMedicinePreview,
  }) {
    return loadingMedicinePreviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
  }) {
    return loadingMedicinePreviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
    required TResult orElse(),
  }) {
    if (loadingMedicinePreviews != null) {
      return loadingMedicinePreviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingMedicinePreview value)
        loadingMedicinePreviews,
    required TResult Function(_LoadedMedicinePreview value)
        loadedMedicinePreviews,
    required TResult Function(_ErrorMedicinePreview value) errorMedicinePreview,
  }) {
    return loadingMedicinePreviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
  }) {
    return loadingMedicinePreviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
    required TResult orElse(),
  }) {
    if (loadingMedicinePreviews != null) {
      return loadingMedicinePreviews(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadingMedicinePreviewToJson(
      this,
    );
  }
}

abstract class _LoadingMedicinePreview implements MedicineState {
  const factory _LoadingMedicinePreview() = _$_LoadingMedicinePreview;

  factory _LoadingMedicinePreview.fromJson(Map<String, dynamic> json) =
      _$_LoadingMedicinePreview.fromJson;
}

/// @nodoc
abstract class _$$_LoadedMedicinePreviewCopyWith<$Res> {
  factory _$$_LoadedMedicinePreviewCopyWith(_$_LoadedMedicinePreview value,
          $Res Function(_$_LoadedMedicinePreview) then) =
      __$$_LoadedMedicinePreviewCopyWithImpl<$Res>;
  $Res call({List<MedicinePreview> medicines});
}

/// @nodoc
class __$$_LoadedMedicinePreviewCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res>
    implements _$$_LoadedMedicinePreviewCopyWith<$Res> {
  __$$_LoadedMedicinePreviewCopyWithImpl(_$_LoadedMedicinePreview _value,
      $Res Function(_$_LoadedMedicinePreview) _then)
      : super(_value, (v) => _then(v as _$_LoadedMedicinePreview));

  @override
  _$_LoadedMedicinePreview get _value =>
      super._value as _$_LoadedMedicinePreview;

  @override
  $Res call({
    Object? medicines = freezed,
  }) {
    return _then(_$_LoadedMedicinePreview(
      medicines == freezed
          ? _value._medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as List<MedicinePreview>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadedMedicinePreview implements _LoadedMedicinePreview {
  const _$_LoadedMedicinePreview(final List<MedicinePreview> medicines,
      {final String? $type})
      : _medicines = medicines,
        $type = $type ?? 'loadedMedicinePreviews';

  factory _$_LoadedMedicinePreview.fromJson(Map<String, dynamic> json) =>
      _$$_LoadedMedicinePreviewFromJson(json);

  final List<MedicinePreview> _medicines;
  @override
  List<MedicinePreview> get medicines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicines);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MedicineState.loadedMedicinePreviews(medicines: $medicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedMedicinePreview &&
            const DeepCollectionEquality()
                .equals(other._medicines, _medicines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_medicines));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedMedicinePreviewCopyWith<_$_LoadedMedicinePreview> get copyWith =>
      __$$_LoadedMedicinePreviewCopyWithImpl<_$_LoadedMedicinePreview>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMedicinePreviews,
    required TResult Function(List<MedicinePreview> medicines)
        loadedMedicinePreviews,
    required TResult Function(String message) errorMedicinePreview,
  }) {
    return loadedMedicinePreviews(medicines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
  }) {
    return loadedMedicinePreviews?.call(medicines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
    required TResult orElse(),
  }) {
    if (loadedMedicinePreviews != null) {
      return loadedMedicinePreviews(medicines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingMedicinePreview value)
        loadingMedicinePreviews,
    required TResult Function(_LoadedMedicinePreview value)
        loadedMedicinePreviews,
    required TResult Function(_ErrorMedicinePreview value) errorMedicinePreview,
  }) {
    return loadedMedicinePreviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
  }) {
    return loadedMedicinePreviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
    required TResult orElse(),
  }) {
    if (loadedMedicinePreviews != null) {
      return loadedMedicinePreviews(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadedMedicinePreviewToJson(
      this,
    );
  }
}

abstract class _LoadedMedicinePreview implements MedicineState {
  const factory _LoadedMedicinePreview(final List<MedicinePreview> medicines) =
      _$_LoadedMedicinePreview;

  factory _LoadedMedicinePreview.fromJson(Map<String, dynamic> json) =
      _$_LoadedMedicinePreview.fromJson;

  List<MedicinePreview> get medicines;
  @JsonKey(ignore: true)
  _$$_LoadedMedicinePreviewCopyWith<_$_LoadedMedicinePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorMedicinePreviewCopyWith<$Res> {
  factory _$$_ErrorMedicinePreviewCopyWith(_$_ErrorMedicinePreview value,
          $Res Function(_$_ErrorMedicinePreview) then) =
      __$$_ErrorMedicinePreviewCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorMedicinePreviewCopyWithImpl<$Res>
    extends _$MedicineStateCopyWithImpl<$Res>
    implements _$$_ErrorMedicinePreviewCopyWith<$Res> {
  __$$_ErrorMedicinePreviewCopyWithImpl(_$_ErrorMedicinePreview _value,
      $Res Function(_$_ErrorMedicinePreview) _then)
      : super(_value, (v) => _then(v as _$_ErrorMedicinePreview));

  @override
  _$_ErrorMedicinePreview get _value => super._value as _$_ErrorMedicinePreview;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorMedicinePreview(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorMedicinePreview implements _ErrorMedicinePreview {
  const _$_ErrorMedicinePreview(this.message, {final String? $type})
      : $type = $type ?? 'errorMedicinePreview';

  factory _$_ErrorMedicinePreview.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorMedicinePreviewFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MedicineState.errorMedicinePreview(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorMedicinePreview &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorMedicinePreviewCopyWith<_$_ErrorMedicinePreview> get copyWith =>
      __$$_ErrorMedicinePreviewCopyWithImpl<_$_ErrorMedicinePreview>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingMedicinePreviews,
    required TResult Function(List<MedicinePreview> medicines)
        loadedMedicinePreviews,
    required TResult Function(String message) errorMedicinePreview,
  }) {
    return errorMedicinePreview(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
  }) {
    return errorMedicinePreview?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingMedicinePreviews,
    TResult Function(List<MedicinePreview> medicines)? loadedMedicinePreviews,
    TResult Function(String message)? errorMedicinePreview,
    required TResult orElse(),
  }) {
    if (errorMedicinePreview != null) {
      return errorMedicinePreview(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingMedicinePreview value)
        loadingMedicinePreviews,
    required TResult Function(_LoadedMedicinePreview value)
        loadedMedicinePreviews,
    required TResult Function(_ErrorMedicinePreview value) errorMedicinePreview,
  }) {
    return errorMedicinePreview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
  }) {
    return errorMedicinePreview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMedicinePreview value)? loadingMedicinePreviews,
    TResult Function(_LoadedMedicinePreview value)? loadedMedicinePreviews,
    TResult Function(_ErrorMedicinePreview value)? errorMedicinePreview,
    required TResult orElse(),
  }) {
    if (errorMedicinePreview != null) {
      return errorMedicinePreview(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMedicinePreviewToJson(
      this,
    );
  }
}

abstract class _ErrorMedicinePreview implements MedicineState {
  const factory _ErrorMedicinePreview(final String message) =
      _$_ErrorMedicinePreview;

  factory _ErrorMedicinePreview.fromJson(Map<String, dynamic> json) =
      _$_ErrorMedicinePreview.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorMedicinePreviewCopyWith<_$_ErrorMedicinePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

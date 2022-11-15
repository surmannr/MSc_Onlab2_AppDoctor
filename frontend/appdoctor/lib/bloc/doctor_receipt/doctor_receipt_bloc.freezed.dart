// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doctor_receipt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorReceiptEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getReceiptsByDoctorId,
    required TResult Function(NewReceipt newReceipt) addNewReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getReceiptsByDoctorId,
    TResult Function(NewReceipt newReceipt)? addNewReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getReceiptsByDoctorId,
    TResult Function(NewReceipt newReceipt)? addNewReceipt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReceiptsByDoctorId value)
        getReceiptsByDoctorId,
    required TResult Function(_AddNewReceipt value) addNewReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReceiptsByDoctorId value)? getReceiptsByDoctorId,
    TResult Function(_AddNewReceipt value)? addNewReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReceiptsByDoctorId value)? getReceiptsByDoctorId,
    TResult Function(_AddNewReceipt value)? addNewReceipt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReceiptEventCopyWith<$Res> {
  factory $DoctorReceiptEventCopyWith(
          DoctorReceiptEvent value, $Res Function(DoctorReceiptEvent) then) =
      _$DoctorReceiptEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorReceiptEventCopyWithImpl<$Res>
    implements $DoctorReceiptEventCopyWith<$Res> {
  _$DoctorReceiptEventCopyWithImpl(this._value, this._then);

  final DoctorReceiptEvent _value;
  // ignore: unused_field
  final $Res Function(DoctorReceiptEvent) _then;
}

/// @nodoc
abstract class _$$_GetReceiptsByDoctorIdCopyWith<$Res> {
  factory _$$_GetReceiptsByDoctorIdCopyWith(_$_GetReceiptsByDoctorId value,
          $Res Function(_$_GetReceiptsByDoctorId) then) =
      __$$_GetReceiptsByDoctorIdCopyWithImpl<$Res>;
  $Res call({String doctorId});
}

/// @nodoc
class __$$_GetReceiptsByDoctorIdCopyWithImpl<$Res>
    extends _$DoctorReceiptEventCopyWithImpl<$Res>
    implements _$$_GetReceiptsByDoctorIdCopyWith<$Res> {
  __$$_GetReceiptsByDoctorIdCopyWithImpl(_$_GetReceiptsByDoctorId _value,
      $Res Function(_$_GetReceiptsByDoctorId) _then)
      : super(_value, (v) => _then(v as _$_GetReceiptsByDoctorId));

  @override
  _$_GetReceiptsByDoctorId get _value =>
      super._value as _$_GetReceiptsByDoctorId;

  @override
  $Res call({
    Object? doctorId = freezed,
  }) {
    return _then(_$_GetReceiptsByDoctorId(
      doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetReceiptsByDoctorId implements _GetReceiptsByDoctorId {
  const _$_GetReceiptsByDoctorId(this.doctorId);

  @override
  final String doctorId;

  @override
  String toString() {
    return 'DoctorReceiptEvent.getReceiptsByDoctorId(doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetReceiptsByDoctorId &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(doctorId));

  @JsonKey(ignore: true)
  @override
  _$$_GetReceiptsByDoctorIdCopyWith<_$_GetReceiptsByDoctorId> get copyWith =>
      __$$_GetReceiptsByDoctorIdCopyWithImpl<_$_GetReceiptsByDoctorId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getReceiptsByDoctorId,
    required TResult Function(NewReceipt newReceipt) addNewReceipt,
  }) {
    return getReceiptsByDoctorId(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getReceiptsByDoctorId,
    TResult Function(NewReceipt newReceipt)? addNewReceipt,
  }) {
    return getReceiptsByDoctorId?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getReceiptsByDoctorId,
    TResult Function(NewReceipt newReceipt)? addNewReceipt,
    required TResult orElse(),
  }) {
    if (getReceiptsByDoctorId != null) {
      return getReceiptsByDoctorId(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReceiptsByDoctorId value)
        getReceiptsByDoctorId,
    required TResult Function(_AddNewReceipt value) addNewReceipt,
  }) {
    return getReceiptsByDoctorId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReceiptsByDoctorId value)? getReceiptsByDoctorId,
    TResult Function(_AddNewReceipt value)? addNewReceipt,
  }) {
    return getReceiptsByDoctorId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReceiptsByDoctorId value)? getReceiptsByDoctorId,
    TResult Function(_AddNewReceipt value)? addNewReceipt,
    required TResult orElse(),
  }) {
    if (getReceiptsByDoctorId != null) {
      return getReceiptsByDoctorId(this);
    }
    return orElse();
  }
}

abstract class _GetReceiptsByDoctorId implements DoctorReceiptEvent {
  const factory _GetReceiptsByDoctorId(final String doctorId) =
      _$_GetReceiptsByDoctorId;

  String get doctorId;
  @JsonKey(ignore: true)
  _$$_GetReceiptsByDoctorIdCopyWith<_$_GetReceiptsByDoctorId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewReceiptCopyWith<$Res> {
  factory _$$_AddNewReceiptCopyWith(
          _$_AddNewReceipt value, $Res Function(_$_AddNewReceipt) then) =
      __$$_AddNewReceiptCopyWithImpl<$Res>;
  $Res call({NewReceipt newReceipt});

  $NewReceiptCopyWith<$Res> get newReceipt;
}

/// @nodoc
class __$$_AddNewReceiptCopyWithImpl<$Res>
    extends _$DoctorReceiptEventCopyWithImpl<$Res>
    implements _$$_AddNewReceiptCopyWith<$Res> {
  __$$_AddNewReceiptCopyWithImpl(
      _$_AddNewReceipt _value, $Res Function(_$_AddNewReceipt) _then)
      : super(_value, (v) => _then(v as _$_AddNewReceipt));

  @override
  _$_AddNewReceipt get _value => super._value as _$_AddNewReceipt;

  @override
  $Res call({
    Object? newReceipt = freezed,
  }) {
    return _then(_$_AddNewReceipt(
      newReceipt == freezed
          ? _value.newReceipt
          : newReceipt // ignore: cast_nullable_to_non_nullable
              as NewReceipt,
    ));
  }

  @override
  $NewReceiptCopyWith<$Res> get newReceipt {
    return $NewReceiptCopyWith<$Res>(_value.newReceipt, (value) {
      return _then(_value.copyWith(newReceipt: value));
    });
  }
}

/// @nodoc

class _$_AddNewReceipt implements _AddNewReceipt {
  const _$_AddNewReceipt(this.newReceipt);

  @override
  final NewReceipt newReceipt;

  @override
  String toString() {
    return 'DoctorReceiptEvent.addNewReceipt(newReceipt: $newReceipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewReceipt &&
            const DeepCollectionEquality()
                .equals(other.newReceipt, newReceipt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newReceipt));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewReceiptCopyWith<_$_AddNewReceipt> get copyWith =>
      __$$_AddNewReceiptCopyWithImpl<_$_AddNewReceipt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String doctorId) getReceiptsByDoctorId,
    required TResult Function(NewReceipt newReceipt) addNewReceipt,
  }) {
    return addNewReceipt(newReceipt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String doctorId)? getReceiptsByDoctorId,
    TResult Function(NewReceipt newReceipt)? addNewReceipt,
  }) {
    return addNewReceipt?.call(newReceipt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId)? getReceiptsByDoctorId,
    TResult Function(NewReceipt newReceipt)? addNewReceipt,
    required TResult orElse(),
  }) {
    if (addNewReceipt != null) {
      return addNewReceipt(newReceipt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReceiptsByDoctorId value)
        getReceiptsByDoctorId,
    required TResult Function(_AddNewReceipt value) addNewReceipt,
  }) {
    return addNewReceipt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReceiptsByDoctorId value)? getReceiptsByDoctorId,
    TResult Function(_AddNewReceipt value)? addNewReceipt,
  }) {
    return addNewReceipt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReceiptsByDoctorId value)? getReceiptsByDoctorId,
    TResult Function(_AddNewReceipt value)? addNewReceipt,
    required TResult orElse(),
  }) {
    if (addNewReceipt != null) {
      return addNewReceipt(this);
    }
    return orElse();
  }
}

abstract class _AddNewReceipt implements DoctorReceiptEvent {
  const factory _AddNewReceipt(final NewReceipt newReceipt) = _$_AddNewReceipt;

  NewReceipt get newReceipt;
  @JsonKey(ignore: true)
  _$$_AddNewReceiptCopyWith<_$_AddNewReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorReceiptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReceipts,
    required TResult Function(List<Receipt> receipts) loadedDoctorReceipts,
    required TResult Function(String message) errorDoctorReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDoctorReceiptState value)
        loadingDoctorReceipts,
    required TResult Function(_LoadedDoctorReceiptState value)
        loadedDoctorReceipts,
    required TResult Function(_ErrorDoctorReceiptState value)
        errorDoctorReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorReceiptStateCopyWith<$Res> {
  factory $DoctorReceiptStateCopyWith(
          DoctorReceiptState value, $Res Function(DoctorReceiptState) then) =
      _$DoctorReceiptStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoctorReceiptStateCopyWithImpl<$Res>
    implements $DoctorReceiptStateCopyWith<$Res> {
  _$DoctorReceiptStateCopyWithImpl(this._value, this._then);

  final DoctorReceiptState _value;
  // ignore: unused_field
  final $Res Function(DoctorReceiptState) _then;
}

/// @nodoc
abstract class _$$_LoadingDoctorReceiptStateCopyWith<$Res> {
  factory _$$_LoadingDoctorReceiptStateCopyWith(
          _$_LoadingDoctorReceiptState value,
          $Res Function(_$_LoadingDoctorReceiptState) then) =
      __$$_LoadingDoctorReceiptStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingDoctorReceiptStateCopyWithImpl<$Res>
    extends _$DoctorReceiptStateCopyWithImpl<$Res>
    implements _$$_LoadingDoctorReceiptStateCopyWith<$Res> {
  __$$_LoadingDoctorReceiptStateCopyWithImpl(
      _$_LoadingDoctorReceiptState _value,
      $Res Function(_$_LoadingDoctorReceiptState) _then)
      : super(_value, (v) => _then(v as _$_LoadingDoctorReceiptState));

  @override
  _$_LoadingDoctorReceiptState get _value =>
      super._value as _$_LoadingDoctorReceiptState;
}

/// @nodoc

class _$_LoadingDoctorReceiptState implements _LoadingDoctorReceiptState {
  const _$_LoadingDoctorReceiptState();

  @override
  String toString() {
    return 'DoctorReceiptState.loadingDoctorReceipts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingDoctorReceiptState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReceipts,
    required TResult Function(List<Receipt> receipts) loadedDoctorReceipts,
    required TResult Function(String message) errorDoctorReceipt,
  }) {
    return loadingDoctorReceipts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
  }) {
    return loadingDoctorReceipts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
    required TResult orElse(),
  }) {
    if (loadingDoctorReceipts != null) {
      return loadingDoctorReceipts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDoctorReceiptState value)
        loadingDoctorReceipts,
    required TResult Function(_LoadedDoctorReceiptState value)
        loadedDoctorReceipts,
    required TResult Function(_ErrorDoctorReceiptState value)
        errorDoctorReceipt,
  }) {
    return loadingDoctorReceipts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
  }) {
    return loadingDoctorReceipts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
    required TResult orElse(),
  }) {
    if (loadingDoctorReceipts != null) {
      return loadingDoctorReceipts(this);
    }
    return orElse();
  }
}

abstract class _LoadingDoctorReceiptState implements DoctorReceiptState {
  const factory _LoadingDoctorReceiptState() = _$_LoadingDoctorReceiptState;
}

/// @nodoc
abstract class _$$_LoadedDoctorReceiptStateCopyWith<$Res> {
  factory _$$_LoadedDoctorReceiptStateCopyWith(
          _$_LoadedDoctorReceiptState value,
          $Res Function(_$_LoadedDoctorReceiptState) then) =
      __$$_LoadedDoctorReceiptStateCopyWithImpl<$Res>;
  $Res call({List<Receipt> receipts});
}

/// @nodoc
class __$$_LoadedDoctorReceiptStateCopyWithImpl<$Res>
    extends _$DoctorReceiptStateCopyWithImpl<$Res>
    implements _$$_LoadedDoctorReceiptStateCopyWith<$Res> {
  __$$_LoadedDoctorReceiptStateCopyWithImpl(_$_LoadedDoctorReceiptState _value,
      $Res Function(_$_LoadedDoctorReceiptState) _then)
      : super(_value, (v) => _then(v as _$_LoadedDoctorReceiptState));

  @override
  _$_LoadedDoctorReceiptState get _value =>
      super._value as _$_LoadedDoctorReceiptState;

  @override
  $Res call({
    Object? receipts = freezed,
  }) {
    return _then(_$_LoadedDoctorReceiptState(
      receipts == freezed
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ));
  }
}

/// @nodoc

class _$_LoadedDoctorReceiptState implements _LoadedDoctorReceiptState {
  const _$_LoadedDoctorReceiptState(final List<Receipt> receipts)
      : _receipts = receipts;

  final List<Receipt> _receipts;
  @override
  List<Receipt> get receipts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  String toString() {
    return 'DoctorReceiptState.loadedDoctorReceipts(receipts: $receipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedDoctorReceiptState &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedDoctorReceiptStateCopyWith<_$_LoadedDoctorReceiptState>
      get copyWith => __$$_LoadedDoctorReceiptStateCopyWithImpl<
          _$_LoadedDoctorReceiptState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReceipts,
    required TResult Function(List<Receipt> receipts) loadedDoctorReceipts,
    required TResult Function(String message) errorDoctorReceipt,
  }) {
    return loadedDoctorReceipts(receipts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
  }) {
    return loadedDoctorReceipts?.call(receipts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
    required TResult orElse(),
  }) {
    if (loadedDoctorReceipts != null) {
      return loadedDoctorReceipts(receipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDoctorReceiptState value)
        loadingDoctorReceipts,
    required TResult Function(_LoadedDoctorReceiptState value)
        loadedDoctorReceipts,
    required TResult Function(_ErrorDoctorReceiptState value)
        errorDoctorReceipt,
  }) {
    return loadedDoctorReceipts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
  }) {
    return loadedDoctorReceipts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
    required TResult orElse(),
  }) {
    if (loadedDoctorReceipts != null) {
      return loadedDoctorReceipts(this);
    }
    return orElse();
  }
}

abstract class _LoadedDoctorReceiptState implements DoctorReceiptState {
  const factory _LoadedDoctorReceiptState(final List<Receipt> receipts) =
      _$_LoadedDoctorReceiptState;

  List<Receipt> get receipts;
  @JsonKey(ignore: true)
  _$$_LoadedDoctorReceiptStateCopyWith<_$_LoadedDoctorReceiptState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorDoctorReceiptStateCopyWith<$Res> {
  factory _$$_ErrorDoctorReceiptStateCopyWith(_$_ErrorDoctorReceiptState value,
          $Res Function(_$_ErrorDoctorReceiptState) then) =
      __$$_ErrorDoctorReceiptStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorDoctorReceiptStateCopyWithImpl<$Res>
    extends _$DoctorReceiptStateCopyWithImpl<$Res>
    implements _$$_ErrorDoctorReceiptStateCopyWith<$Res> {
  __$$_ErrorDoctorReceiptStateCopyWithImpl(_$_ErrorDoctorReceiptState _value,
      $Res Function(_$_ErrorDoctorReceiptState) _then)
      : super(_value, (v) => _then(v as _$_ErrorDoctorReceiptState));

  @override
  _$_ErrorDoctorReceiptState get _value =>
      super._value as _$_ErrorDoctorReceiptState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorDoctorReceiptState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorDoctorReceiptState implements _ErrorDoctorReceiptState {
  const _$_ErrorDoctorReceiptState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DoctorReceiptState.errorDoctorReceipt(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorDoctorReceiptState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorDoctorReceiptStateCopyWith<_$_ErrorDoctorReceiptState>
      get copyWith =>
          __$$_ErrorDoctorReceiptStateCopyWithImpl<_$_ErrorDoctorReceiptState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingDoctorReceipts,
    required TResult Function(List<Receipt> receipts) loadedDoctorReceipts,
    required TResult Function(String message) errorDoctorReceipt,
  }) {
    return errorDoctorReceipt(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
  }) {
    return errorDoctorReceipt?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingDoctorReceipts,
    TResult Function(List<Receipt> receipts)? loadedDoctorReceipts,
    TResult Function(String message)? errorDoctorReceipt,
    required TResult orElse(),
  }) {
    if (errorDoctorReceipt != null) {
      return errorDoctorReceipt(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingDoctorReceiptState value)
        loadingDoctorReceipts,
    required TResult Function(_LoadedDoctorReceiptState value)
        loadedDoctorReceipts,
    required TResult Function(_ErrorDoctorReceiptState value)
        errorDoctorReceipt,
  }) {
    return errorDoctorReceipt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
  }) {
    return errorDoctorReceipt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingDoctorReceiptState value)? loadingDoctorReceipts,
    TResult Function(_LoadedDoctorReceiptState value)? loadedDoctorReceipts,
    TResult Function(_ErrorDoctorReceiptState value)? errorDoctorReceipt,
    required TResult orElse(),
  }) {
    if (errorDoctorReceipt != null) {
      return errorDoctorReceipt(this);
    }
    return orElse();
  }
}

abstract class _ErrorDoctorReceiptState implements DoctorReceiptState {
  const factory _ErrorDoctorReceiptState(final String message) =
      _$_ErrorDoctorReceiptState;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorDoctorReceiptStateCopyWith<_$_ErrorDoctorReceiptState>
      get copyWith => throw _privateConstructorUsedError;
}

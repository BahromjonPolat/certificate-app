// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String certificateId, String branchId)
        dataEntered,
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String certificateId, String branchId)? dataEntered,
    TResult? Function()? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String certificateId, String branchId)? dataEntered,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEntered value) dataEntered,
    required TResult Function(_Confirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataEntered value)? dataEntered,
    TResult? Function(_Confirmed value)? confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEntered value)? dataEntered,
    TResult Function(_Confirmed value)? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmEventCopyWith<$Res> {
  factory $ConfirmEventCopyWith(
          ConfirmEvent value, $Res Function(ConfirmEvent) then) =
      _$ConfirmEventCopyWithImpl<$Res, ConfirmEvent>;
}

/// @nodoc
class _$ConfirmEventCopyWithImpl<$Res, $Val extends ConfirmEvent>
    implements $ConfirmEventCopyWith<$Res> {
  _$ConfirmEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataEnteredCopyWith<$Res> {
  factory _$$_DataEnteredCopyWith(
          _$_DataEntered value, $Res Function(_$_DataEntered) then) =
      __$$_DataEnteredCopyWithImpl<$Res>;
  @useResult
  $Res call({String certificateId, String branchId});
}

/// @nodoc
class __$$_DataEnteredCopyWithImpl<$Res>
    extends _$ConfirmEventCopyWithImpl<$Res, _$_DataEntered>
    implements _$$_DataEnteredCopyWith<$Res> {
  __$$_DataEnteredCopyWithImpl(
      _$_DataEntered _value, $Res Function(_$_DataEntered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateId = null,
    Object? branchId = null,
  }) {
    return _then(_$_DataEntered(
      certificateId: null == certificateId
          ? _value.certificateId
          : certificateId // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataEntered implements _DataEntered {
  const _$_DataEntered({required this.certificateId, required this.branchId});

  @override
  final String certificateId;
  @override
  final String branchId;

  @override
  String toString() {
    return 'ConfirmEvent.dataEntered(certificateId: $certificateId, branchId: $branchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataEntered &&
            (identical(other.certificateId, certificateId) ||
                other.certificateId == certificateId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certificateId, branchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataEnteredCopyWith<_$_DataEntered> get copyWith =>
      __$$_DataEnteredCopyWithImpl<_$_DataEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String certificateId, String branchId)
        dataEntered,
    required TResult Function() confirmed,
  }) {
    return dataEntered(certificateId, branchId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String certificateId, String branchId)? dataEntered,
    TResult? Function()? confirmed,
  }) {
    return dataEntered?.call(certificateId, branchId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String certificateId, String branchId)? dataEntered,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (dataEntered != null) {
      return dataEntered(certificateId, branchId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEntered value) dataEntered,
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return dataEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataEntered value)? dataEntered,
    TResult? Function(_Confirmed value)? confirmed,
  }) {
    return dataEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEntered value)? dataEntered,
    TResult Function(_Confirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (dataEntered != null) {
      return dataEntered(this);
    }
    return orElse();
  }
}

abstract class _DataEntered implements ConfirmEvent {
  const factory _DataEntered(
      {required final String certificateId,
      required final String branchId}) = _$_DataEntered;

  String get certificateId;
  String get branchId;
  @JsonKey(ignore: true)
  _$$_DataEnteredCopyWith<_$_DataEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmedCopyWith<$Res> {
  factory _$$_ConfirmedCopyWith(
          _$_Confirmed value, $Res Function(_$_Confirmed) then) =
      __$$_ConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConfirmedCopyWithImpl<$Res>
    extends _$ConfirmEventCopyWithImpl<$Res, _$_Confirmed>
    implements _$$_ConfirmedCopyWith<$Res> {
  __$$_ConfirmedCopyWithImpl(
      _$_Confirmed _value, $Res Function(_$_Confirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Confirmed implements _Confirmed {
  const _$_Confirmed();

  @override
  String toString() {
    return 'ConfirmEvent.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Confirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String certificateId, String branchId)
        dataEntered,
    required TResult Function() confirmed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String certificateId, String branchId)? dataEntered,
    TResult? Function()? confirmed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String certificateId, String branchId)? dataEntered,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEntered value) dataEntered,
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataEntered value)? dataEntered,
    TResult? Function(_Confirmed value)? confirmed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEntered value)? dataEntered,
    TResult Function(_Confirmed value)? confirmed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _Confirmed implements ConfirmEvent {
  const factory _Confirmed() = _$_Confirmed;
}

/// @nodoc
mixin _$ConfirmState {
  String get certificateId => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, ApiResponse>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmStateCopyWith<ConfirmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmStateCopyWith<$Res> {
  factory $ConfirmStateCopyWith(
          ConfirmState value, $Res Function(ConfirmState) then) =
      _$ConfirmStateCopyWithImpl<$Res, ConfirmState>;
  @useResult
  $Res call(
      {String certificateId,
      String branchId,
      bool isLoading,
      Option<Either<ServerFailure, ApiResponse>> failureOrSuccess});
}

/// @nodoc
class _$ConfirmStateCopyWithImpl<$Res, $Val extends ConfirmState>
    implements $ConfirmStateCopyWith<$Res> {
  _$ConfirmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateId = null,
    Object? branchId = null,
    Object? isLoading = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      certificateId: null == certificateId
          ? _value.certificateId
          : certificateId // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, ApiResponse>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfirmStateCopyWith<$Res>
    implements $ConfirmStateCopyWith<$Res> {
  factory _$$_ConfirmStateCopyWith(
          _$_ConfirmState value, $Res Function(_$_ConfirmState) then) =
      __$$_ConfirmStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String certificateId,
      String branchId,
      bool isLoading,
      Option<Either<ServerFailure, ApiResponse>> failureOrSuccess});
}

/// @nodoc
class __$$_ConfirmStateCopyWithImpl<$Res>
    extends _$ConfirmStateCopyWithImpl<$Res, _$_ConfirmState>
    implements _$$_ConfirmStateCopyWith<$Res> {
  __$$_ConfirmStateCopyWithImpl(
      _$_ConfirmState _value, $Res Function(_$_ConfirmState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificateId = null,
    Object? branchId = null,
    Object? isLoading = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$_ConfirmState(
      certificateId: null == certificateId
          ? _value.certificateId
          : certificateId // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, ApiResponse>>,
    ));
  }
}

/// @nodoc

class _$_ConfirmState implements _ConfirmState {
  const _$_ConfirmState(
      {required this.certificateId,
      required this.branchId,
      required this.isLoading,
      required this.failureOrSuccess});

  @override
  final String certificateId;
  @override
  final String branchId;
  @override
  final bool isLoading;
  @override
  final Option<Either<ServerFailure, ApiResponse>> failureOrSuccess;

  @override
  String toString() {
    return 'ConfirmState(certificateId: $certificateId, branchId: $branchId, isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmState &&
            (identical(other.certificateId, certificateId) ||
                other.certificateId == certificateId) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, certificateId, branchId, isLoading, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmStateCopyWith<_$_ConfirmState> get copyWith =>
      __$$_ConfirmStateCopyWithImpl<_$_ConfirmState>(this, _$identity);
}

abstract class _ConfirmState implements ConfirmState {
  const factory _ConfirmState(
      {required final String certificateId,
      required final String branchId,
      required final bool isLoading,
      required final Option<Either<ServerFailure, ApiResponse>>
          failureOrSuccess}) = _$_ConfirmState;

  @override
  String get certificateId;
  @override
  String get branchId;
  @override
  bool get isLoading;
  @override
  Option<Either<ServerFailure, ApiResponse>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmStateCopyWith<_$_ConfirmState> get copyWith =>
      throw _privateConstructorUsedError;
}

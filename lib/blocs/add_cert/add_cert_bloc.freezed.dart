// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_cert_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddCertEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) added,
    required TResult Function(int from) fromSelected,
    required TResult Function(int to) toSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? added,
    TResult? Function(int from)? fromSelected,
    TResult? Function(int to)? toSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? added,
    TResult Function(int from)? fromSelected,
    TResult Function(int to)? toSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_FromSelected value) fromSelected,
    required TResult Function(_ToSelected value) toSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_FromSelected value)? fromSelected,
    TResult? Function(_ToSelected value)? toSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_FromSelected value)? fromSelected,
    TResult Function(_ToSelected value)? toSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCertEventCopyWith<$Res> {
  factory $AddCertEventCopyWith(
          AddCertEvent value, $Res Function(AddCertEvent) then) =
      _$AddCertEventCopyWithImpl<$Res, AddCertEvent>;
}

/// @nodoc
class _$AddCertEventCopyWithImpl<$Res, $Val extends AddCertEvent>
    implements $AddCertEventCopyWith<$Res> {
  _$AddCertEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddedCopyWith<$Res> {
  factory _$$_AddedCopyWith(_$_Added value, $Res Function(_$_Added) then) =
      __$$_AddedCopyWithImpl<$Res>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$_AddedCopyWithImpl<$Res>
    extends _$AddCertEventCopyWithImpl<$Res, _$_Added>
    implements _$$_AddedCopyWith<$Res> {
  __$$_AddedCopyWithImpl(_$_Added _value, $Res Function(_$_Added) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_Added(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Added implements _Added {
  const _$_Added(this.price);

  @override
  final int price;

  @override
  String toString() {
    return 'AddCertEvent.added(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Added &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      __$$_AddedCopyWithImpl<_$_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) added,
    required TResult Function(int from) fromSelected,
    required TResult Function(int to) toSelected,
  }) {
    return added(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? added,
    TResult? Function(int from)? fromSelected,
    TResult? Function(int to)? toSelected,
  }) {
    return added?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? added,
    TResult Function(int from)? fromSelected,
    TResult Function(int to)? toSelected,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_FromSelected value) fromSelected,
    required TResult Function(_ToSelected value) toSelected,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_FromSelected value)? fromSelected,
    TResult? Function(_ToSelected value)? toSelected,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_FromSelected value)? fromSelected,
    TResult Function(_ToSelected value)? toSelected,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements AddCertEvent {
  const factory _Added(final int price) = _$_Added;

  int get price;
  @JsonKey(ignore: true)
  _$$_AddedCopyWith<_$_Added> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FromSelectedCopyWith<$Res> {
  factory _$$_FromSelectedCopyWith(
          _$_FromSelected value, $Res Function(_$_FromSelected) then) =
      __$$_FromSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int from});
}

/// @nodoc
class __$$_FromSelectedCopyWithImpl<$Res>
    extends _$AddCertEventCopyWithImpl<$Res, _$_FromSelected>
    implements _$$_FromSelectedCopyWith<$Res> {
  __$$_FromSelectedCopyWithImpl(
      _$_FromSelected _value, $Res Function(_$_FromSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
  }) {
    return _then(_$_FromSelected(
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FromSelected implements _FromSelected {
  const _$_FromSelected(this.from);

  @override
  final int from;

  @override
  String toString() {
    return 'AddCertEvent.fromSelected(from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FromSelected &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FromSelectedCopyWith<_$_FromSelected> get copyWith =>
      __$$_FromSelectedCopyWithImpl<_$_FromSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) added,
    required TResult Function(int from) fromSelected,
    required TResult Function(int to) toSelected,
  }) {
    return fromSelected(from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? added,
    TResult? Function(int from)? fromSelected,
    TResult? Function(int to)? toSelected,
  }) {
    return fromSelected?.call(from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? added,
    TResult Function(int from)? fromSelected,
    TResult Function(int to)? toSelected,
    required TResult orElse(),
  }) {
    if (fromSelected != null) {
      return fromSelected(from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_FromSelected value) fromSelected,
    required TResult Function(_ToSelected value) toSelected,
  }) {
    return fromSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_FromSelected value)? fromSelected,
    TResult? Function(_ToSelected value)? toSelected,
  }) {
    return fromSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_FromSelected value)? fromSelected,
    TResult Function(_ToSelected value)? toSelected,
    required TResult orElse(),
  }) {
    if (fromSelected != null) {
      return fromSelected(this);
    }
    return orElse();
  }
}

abstract class _FromSelected implements AddCertEvent {
  const factory _FromSelected(final int from) = _$_FromSelected;

  int get from;
  @JsonKey(ignore: true)
  _$$_FromSelectedCopyWith<_$_FromSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToSelectedCopyWith<$Res> {
  factory _$$_ToSelectedCopyWith(
          _$_ToSelected value, $Res Function(_$_ToSelected) then) =
      __$$_ToSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int to});
}

/// @nodoc
class __$$_ToSelectedCopyWithImpl<$Res>
    extends _$AddCertEventCopyWithImpl<$Res, _$_ToSelected>
    implements _$$_ToSelectedCopyWith<$Res> {
  __$$_ToSelectedCopyWithImpl(
      _$_ToSelected _value, $Res Function(_$_ToSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
  }) {
    return _then(_$_ToSelected(
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToSelected implements _ToSelected {
  const _$_ToSelected(this.to);

  @override
  final int to;

  @override
  String toString() {
    return 'AddCertEvent.toSelected(to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToSelected &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToSelectedCopyWith<_$_ToSelected> get copyWith =>
      __$$_ToSelectedCopyWithImpl<_$_ToSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) added,
    required TResult Function(int from) fromSelected,
    required TResult Function(int to) toSelected,
  }) {
    return toSelected(to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? added,
    TResult? Function(int from)? fromSelected,
    TResult? Function(int to)? toSelected,
  }) {
    return toSelected?.call(to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? added,
    TResult Function(int from)? fromSelected,
    TResult Function(int to)? toSelected,
    required TResult orElse(),
  }) {
    if (toSelected != null) {
      return toSelected(to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Added value) added,
    required TResult Function(_FromSelected value) fromSelected,
    required TResult Function(_ToSelected value) toSelected,
  }) {
    return toSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Added value)? added,
    TResult? Function(_FromSelected value)? fromSelected,
    TResult? Function(_ToSelected value)? toSelected,
  }) {
    return toSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Added value)? added,
    TResult Function(_FromSelected value)? fromSelected,
    TResult Function(_ToSelected value)? toSelected,
    required TResult orElse(),
  }) {
    if (toSelected != null) {
      return toSelected(this);
    }
    return orElse();
  }
}

abstract class _ToSelected implements AddCertEvent {
  const factory _ToSelected(final int to) = _$_ToSelected;

  int get to;
  @JsonKey(ignore: true)
  _$$_ToSelectedCopyWith<_$_ToSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCertState {
  int get from => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  Option<Either<ServerFailure, ApiResponse>> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCertStateCopyWith<AddCertState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCertStateCopyWith<$Res> {
  factory $AddCertStateCopyWith(
          AddCertState value, $Res Function(AddCertState) then) =
      _$AddCertStateCopyWithImpl<$Res, AddCertState>;
  @useResult
  $Res call(
      {int from,
      int to,
      int price,
      Option<Either<ServerFailure, ApiResponse>> failureOrSuccess,
      bool isLoading});
}

/// @nodoc
class _$AddCertStateCopyWithImpl<$Res, $Val extends AddCertState>
    implements $AddCertStateCopyWith<$Res> {
  _$AddCertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? price = null,
    Object? failureOrSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, ApiResponse>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCertStateCopyWith<$Res>
    implements $AddCertStateCopyWith<$Res> {
  factory _$$_AddCertStateCopyWith(
          _$_AddCertState value, $Res Function(_$_AddCertState) then) =
      __$$_AddCertStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int from,
      int to,
      int price,
      Option<Either<ServerFailure, ApiResponse>> failureOrSuccess,
      bool isLoading});
}

/// @nodoc
class __$$_AddCertStateCopyWithImpl<$Res>
    extends _$AddCertStateCopyWithImpl<$Res, _$_AddCertState>
    implements _$$_AddCertStateCopyWith<$Res> {
  __$$_AddCertStateCopyWithImpl(
      _$_AddCertState _value, $Res Function(_$_AddCertState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? price = null,
    Object? failureOrSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_$_AddCertState(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerFailure, ApiResponse>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddCertState implements _AddCertState {
  const _$_AddCertState(
      {required this.from,
      required this.to,
      required this.price,
      required this.failureOrSuccess,
      required this.isLoading});

  @override
  final int from;
  @override
  final int to;
  @override
  final int price;
  @override
  final Option<Either<ServerFailure, ApiResponse>> failureOrSuccess;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AddCertState(from: $from, to: $to, price: $price, failureOrSuccess: $failureOrSuccess, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCertState &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, from, to, price, failureOrSuccess, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCertStateCopyWith<_$_AddCertState> get copyWith =>
      __$$_AddCertStateCopyWithImpl<_$_AddCertState>(this, _$identity);
}

abstract class _AddCertState implements AddCertState {
  const factory _AddCertState(
      {required final int from,
      required final int to,
      required final int price,
      required final Option<Either<ServerFailure, ApiResponse>>
          failureOrSuccess,
      required final bool isLoading}) = _$_AddCertState;

  @override
  int get from;
  @override
  int get to;
  @override
  int get price;
  @override
  Option<Either<ServerFailure, ApiResponse>> get failureOrSuccess;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AddCertStateCopyWith<_$_AddCertState> get copyWith =>
      throw _privateConstructorUsedError;
}

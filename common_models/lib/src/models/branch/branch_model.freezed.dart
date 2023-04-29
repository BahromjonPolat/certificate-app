// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
mixin _$BranchModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get address => throw _privateConstructorUsedError;
  @HiveField(2)
  set address(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String get city => throw _privateConstructorUsedError;
  @HiveField(3)
  set city(String value) => throw _privateConstructorUsedError;
  @HiveField(4)
  String get createdBy => throw _privateConstructorUsedError;
  @HiveField(4)
  set createdBy(String value) => throw _privateConstructorUsedError;
  @HiveField(5)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(5)
  set createdAt(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res, BranchModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String address,
      @HiveField(3) String city,
      @HiveField(4) String createdBy,
      @HiveField(5) int createdAt});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res, $Val extends BranchModel>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? city = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BranchModelCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$$_BranchModelCopyWith(
          _$_BranchModel value, $Res Function(_$_BranchModel) then) =
      __$$_BranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String address,
      @HiveField(3) String city,
      @HiveField(4) String createdBy,
      @HiveField(5) int createdAt});
}

/// @nodoc
class __$$_BranchModelCopyWithImpl<$Res>
    extends _$BranchModelCopyWithImpl<$Res, _$_BranchModel>
    implements _$$_BranchModelCopyWith<$Res> {
  __$$_BranchModelCopyWithImpl(
      _$_BranchModel _value, $Res Function(_$_BranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? city = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_$_BranchModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchModel implements _BranchModel {
  _$_BranchModel(
      {@HiveField(0) this.id = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.address = '',
      @HiveField(3) this.city = '',
      @HiveField(4) this.createdBy = '',
      @HiveField(5) this.createdAt = 0});

  factory _$_BranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_BranchModelFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  String id;
  @override
  @JsonKey()
  @HiveField(1)
  String name;
  @override
  @JsonKey()
  @HiveField(2)
  String address;
  @override
  @JsonKey()
  @HiveField(3)
  String city;
  @override
  @JsonKey()
  @HiveField(4)
  String createdBy;
  @override
  @JsonKey()
  @HiveField(5)
  int createdAt;

  @override
  String toString() {
    return 'BranchModel(id: $id, name: $name, address: $address, city: $city, createdBy: $createdBy, createdAt: $createdAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BranchModelCopyWith<_$_BranchModel> get copyWith =>
      __$$_BranchModelCopyWithImpl<_$_BranchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchModelToJson(
      this,
    );
  }
}

abstract class _BranchModel implements BranchModel {
  factory _BranchModel(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String address,
      @HiveField(3) String city,
      @HiveField(4) String createdBy,
      @HiveField(5) int createdAt}) = _$_BranchModel;

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$_BranchModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @HiveField(0)
  set id(String value);
  @override
  @HiveField(1)
  String get name;
  @HiveField(1)
  set name(String value);
  @override
  @HiveField(2)
  String get address;
  @HiveField(2)
  set address(String value);
  @override
  @HiveField(3)
  String get city;
  @HiveField(3)
  set city(String value);
  @override
  @HiveField(4)
  String get createdBy;
  @HiveField(4)
  set createdBy(String value);
  @override
  @HiveField(5)
  int get createdAt;
  @HiveField(5)
  set createdAt(int value);
  @override
  @JsonKey(ignore: true)
  _$$_BranchModelCopyWith<_$_BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificateModel _$CertificateModelFromJson(Map<String, dynamic> json) {
  return _CertificateModel.fromJson(json);
}

/// @nodoc
mixin _$CertificateModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get uniqueCode => throw _privateConstructorUsedError;
  @HiveField(2)
  set uniqueCode(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  num get price => throw _privateConstructorUsedError;
  @HiveField(1)
  set price(num value) => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get enable => throw _privateConstructorUsedError;
  @HiveField(3)
  set enable(bool value) => throw _privateConstructorUsedError;
  @HiveField(4)
  int get usedDate => throw _privateConstructorUsedError;
  @HiveField(4)
  set usedDate(int value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String get confirmedEmployeeId => throw _privateConstructorUsedError;
  @HiveField(5)
  set confirmedEmployeeId(String value) => throw _privateConstructorUsedError;
  @HiveField(6)
  String get confirmedBranchId => throw _privateConstructorUsedError;
  @HiveField(6)
  set confirmedBranchId(String value) => throw _privateConstructorUsedError;
  @HiveField(7)
  String get createdBy => throw _privateConstructorUsedError;
  @HiveField(7)
  set createdBy(String value) => throw _privateConstructorUsedError;
  @HiveField(8)
  int get createdAt => throw _privateConstructorUsedError;
  @HiveField(8)
  set createdAt(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateModelCopyWith<CertificateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateModelCopyWith<$Res> {
  factory $CertificateModelCopyWith(
          CertificateModel value, $Res Function(CertificateModel) then) =
      _$CertificateModelCopyWithImpl<$Res, CertificateModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(2) String uniqueCode,
      @HiveField(1) num price,
      @HiveField(3) bool enable,
      @HiveField(4) int usedDate,
      @HiveField(5) String confirmedEmployeeId,
      @HiveField(6) String confirmedBranchId,
      @HiveField(7) String createdBy,
      @HiveField(8) int createdAt});
}

/// @nodoc
class _$CertificateModelCopyWithImpl<$Res, $Val extends CertificateModel>
    implements $CertificateModelCopyWith<$Res> {
  _$CertificateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uniqueCode = null,
    Object? price = null,
    Object? enable = null,
    Object? usedDate = null,
    Object? confirmedEmployeeId = null,
    Object? confirmedBranchId = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      usedDate: null == usedDate
          ? _value.usedDate
          : usedDate // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedEmployeeId: null == confirmedEmployeeId
          ? _value.confirmedEmployeeId
          : confirmedEmployeeId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedBranchId: null == confirmedBranchId
          ? _value.confirmedBranchId
          : confirmedBranchId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CertificateModelCopyWith<$Res>
    implements $CertificateModelCopyWith<$Res> {
  factory _$$_CertificateModelCopyWith(
          _$_CertificateModel value, $Res Function(_$_CertificateModel) then) =
      __$$_CertificateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(2) String uniqueCode,
      @HiveField(1) num price,
      @HiveField(3) bool enable,
      @HiveField(4) int usedDate,
      @HiveField(5) String confirmedEmployeeId,
      @HiveField(6) String confirmedBranchId,
      @HiveField(7) String createdBy,
      @HiveField(8) int createdAt});
}

/// @nodoc
class __$$_CertificateModelCopyWithImpl<$Res>
    extends _$CertificateModelCopyWithImpl<$Res, _$_CertificateModel>
    implements _$$_CertificateModelCopyWith<$Res> {
  __$$_CertificateModelCopyWithImpl(
      _$_CertificateModel _value, $Res Function(_$_CertificateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uniqueCode = null,
    Object? price = null,
    Object? enable = null,
    Object? usedDate = null,
    Object? confirmedEmployeeId = null,
    Object? confirmedBranchId = null,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_$_CertificateModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      usedDate: null == usedDate
          ? _value.usedDate
          : usedDate // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedEmployeeId: null == confirmedEmployeeId
          ? _value.confirmedEmployeeId
          : confirmedEmployeeId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedBranchId: null == confirmedBranchId
          ? _value.confirmedBranchId
          : confirmedBranchId // ignore: cast_nullable_to_non_nullable
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
class _$_CertificateModel implements _CertificateModel {
  _$_CertificateModel(
      {@HiveField(0) this.id = '',
      @HiveField(2) this.uniqueCode = '',
      @HiveField(1) this.price = 0,
      @HiveField(3) this.enable = false,
      @HiveField(4) this.usedDate = 0,
      @HiveField(5) this.confirmedEmployeeId = '',
      @HiveField(6) this.confirmedBranchId = '',
      @HiveField(7) this.createdBy = '',
      @HiveField(8) this.createdAt = 0});

  factory _$_CertificateModel.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateModelFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  String id;
  @override
  @JsonKey()
  @HiveField(2)
  String uniqueCode;
  @override
  @JsonKey()
  @HiveField(1)
  num price;
  @override
  @JsonKey()
  @HiveField(3)
  bool enable;
  @override
  @JsonKey()
  @HiveField(4)
  int usedDate;
  @override
  @JsonKey()
  @HiveField(5)
  String confirmedEmployeeId;
  @override
  @JsonKey()
  @HiveField(6)
  String confirmedBranchId;
  @override
  @JsonKey()
  @HiveField(7)
  String createdBy;
  @override
  @JsonKey()
  @HiveField(8)
  int createdAt;

  @override
  String toString() {
    return 'CertificateModel(id: $id, uniqueCode: $uniqueCode, price: $price, enable: $enable, usedDate: $usedDate, confirmedEmployeeId: $confirmedEmployeeId, confirmedBranchId: $confirmedBranchId, createdBy: $createdBy, createdAt: $createdAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CertificateModelCopyWith<_$_CertificateModel> get copyWith =>
      __$$_CertificateModelCopyWithImpl<_$_CertificateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificateModelToJson(
      this,
    );
  }
}

abstract class _CertificateModel implements CertificateModel {
  factory _CertificateModel(
      {@HiveField(0) String id,
      @HiveField(2) String uniqueCode,
      @HiveField(1) num price,
      @HiveField(3) bool enable,
      @HiveField(4) int usedDate,
      @HiveField(5) String confirmedEmployeeId,
      @HiveField(6) String confirmedBranchId,
      @HiveField(7) String createdBy,
      @HiveField(8) int createdAt}) = _$_CertificateModel;

  factory _CertificateModel.fromJson(Map<String, dynamic> json) =
      _$_CertificateModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @HiveField(0)
  set id(String value);
  @override
  @HiveField(2)
  String get uniqueCode;
  @HiveField(2)
  set uniqueCode(String value);
  @override
  @HiveField(1)
  num get price;
  @HiveField(1)
  set price(num value);
  @override
  @HiveField(3)
  bool get enable;
  @HiveField(3)
  set enable(bool value);
  @override
  @HiveField(4)
  int get usedDate;
  @HiveField(4)
  set usedDate(int value);
  @override
  @HiveField(5)
  String get confirmedEmployeeId;
  @HiveField(5)
  set confirmedEmployeeId(String value);
  @override
  @HiveField(6)
  String get confirmedBranchId;
  @HiveField(6)
  set confirmedBranchId(String value);
  @override
  @HiveField(7)
  String get createdBy;
  @HiveField(7)
  set createdBy(String value);
  @override
  @HiveField(8)
  int get createdAt;
  @HiveField(8)
  set createdAt(int value);
  @override
  @JsonKey(ignore: true)
  _$$_CertificateModelCopyWith<_$_CertificateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

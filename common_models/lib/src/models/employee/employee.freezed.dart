// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(2)
  set lastName(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String get phone => throw _privateConstructorUsedError;
  @HiveField(3)
  set phone(String value) => throw _privateConstructorUsedError;
  @HiveField(4)
  String get password => throw _privateConstructorUsedError;
  @HiveField(4)
  set password(String value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String get branchId => throw _privateConstructorUsedError;
  @HiveField(5)
  set branchId(String value) => throw _privateConstructorUsedError;
  @HiveField(6)
  String get role => throw _privateConstructorUsedError;
  @HiveField(6)
  set role(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String lastName,
      @HiveField(3) String phone,
      @HiveField(4) String password,
      @HiveField(5) String branchId,
      @HiveField(6) String role});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastName = null,
    Object? phone = null,
    Object? password = null,
    Object? branchId = null,
    Object? role = null,
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
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String lastName,
      @HiveField(3) String phone,
      @HiveField(4) String password,
      @HiveField(5) String branchId,
      @HiveField(6) String role});
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$_Employee>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lastName = null,
    Object? phone = null,
    Object? password = null,
    Object? branchId = null,
    Object? role = null,
  }) {
    return _then(_$_Employee(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: null == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Employee implements _Employee {
  _$_Employee(
      {@HiveField(0) this.id = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.lastName = '',
      @HiveField(3) this.phone = '',
      @HiveField(4) this.password = '',
      @HiveField(5) this.branchId = '',
      @HiveField(6) this.role = ''});

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeFromJson(json);

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
  String lastName;
  @override
  @JsonKey()
  @HiveField(3)
  String phone;
  @override
  @JsonKey()
  @HiveField(4)
  String password;
  @override
  @JsonKey()
  @HiveField(5)
  String branchId;
  @override
  @JsonKey()
  @HiveField(6)
  String role;

  @override
  String toString() {
    return 'Employee(id: $id, name: $name, lastName: $lastName, phone: $phone, password: $password, branchId: $branchId, role: $role)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  factory _Employee(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String lastName,
      @HiveField(3) String phone,
      @HiveField(4) String password,
      @HiveField(5) String branchId,
      @HiveField(6) String role}) = _$_Employee;

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

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
  String get lastName;
  @HiveField(2)
  set lastName(String value);
  @override
  @HiveField(3)
  String get phone;
  @HiveField(3)
  set phone(String value);
  @override
  @HiveField(4)
  String get password;
  @HiveField(4)
  set password(String value);
  @override
  @HiveField(5)
  String get branchId;
  @HiveField(5)
  set branchId(String value);
  @override
  @HiveField(6)
  String get role;
  @HiveField(6)
  set role(String value);
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 16:06:04
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@unfreezed
@HiveType(typeId: 0)
class Employee with _$Employee {
  factory Employee({
    @HiveField(0) @Default('') String id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String lastName,
    @HiveField(3) @Default('') String phone,
    @HiveField(4) @Default('') String password,
    @HiveField(5) @Default('') String branchId,
    @HiveField(6) @Default('') String role,
    @HiveField(7) @Default(0) int createdAt,
    @HiveField(8) @Default(0) int updatedAt,
    @HiveField(9) @Default(0) int lastSeen,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}

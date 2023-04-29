import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 15:37:16
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:equatable/equatable.dart';

class EmployeeEntity extends Equatable {
  const EmployeeEntity({
    required this.id,
    required this.name,
    required this.branchId,
    required this.lastName,
    required this.phone,
    required this.role,
  });
  final String id;
  final String name;
  final String lastName;
  final String phone;
  final String role;
  final String branchId;

  @override
  List<Object?> get props => [id, name, lastName, branchId, role, phone];

  EmployeeEntity copyWith({
    String? id,
    String? name,
    String? lastName,
    String? phone,
    String? role,
    String? branchId,
  }) {
    return EmployeeEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      branchId: branchId ?? this.branchId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'lastName': lastName,
      'phone': phone,
      'role': role,
      'branchId': branchId,
    };
  }

  factory EmployeeEntity.fromMap(Map<String, dynamic> map) {
    return EmployeeEntity(
      id: map['id'] as String,
      name: map['name'] as String,
      lastName: map['lastName'] as String,
      phone: map['phone'] as String,
      role: map['role'] as String,
      branchId: map['branchId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeEntity.fromJson(String source) =>
      EmployeeEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}

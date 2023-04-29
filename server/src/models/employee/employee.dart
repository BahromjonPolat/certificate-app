/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 15:33:37
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:hive/hive.dart';

import 'employee_entity.dart';

part 'employee.g.dart';

@HiveType(typeId: 0)
class EmployeeModel extends EmployeeEntity {
  EmployeeModel({
    String id = '',
    String name = '',
    String branchId = '',
    String lastName = '',
    String phone = '',
    String role = '',
  }) : super(
          id: id,
          name: name,
          lastName: lastName,
          phone: phone,
          role: role,
          branchId: branchId,
        );
}

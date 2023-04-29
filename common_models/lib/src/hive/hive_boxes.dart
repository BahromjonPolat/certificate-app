/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 17:28:43
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:common_models/src/models/models.dart';
import 'package:hive/hive.dart';

class HiveBoxes {
  const HiveBoxes._();
  static final Box<Employee> employeeBox = Hive.box('employee');
  static final Box<Employee> certificateBox = Hive.box('certificate');
  static final Box<Employee> branchBox = Hive.box('branch');
}

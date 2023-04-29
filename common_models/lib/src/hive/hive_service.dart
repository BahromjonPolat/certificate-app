/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 17:03:25
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/src/models/branch/branch_model.dart';
import 'package:common_models/src/models/certificate/certificate.dart';
import 'package:common_models/src/models/employee/employee.dart';
import 'package:hive/hive.dart';

class HiveService {
  HiveService._();
  static final HiveService instance = HiveService._();

  Future<void> initialize(String path) async {
    Hive.init(path);

    Hive.registerAdapter(EmployeeAdapter());
    Hive.registerAdapter(BranchModelAdapter());
    Hive.registerAdapter(CertificateModelAdapter());

    await Hive.openBox<CertificateModel>('certificate');
    await Hive.openBox<BranchModel>('branch');
    await Hive.openBox<Employee>('employee');
  }

  final Box<Employee> employeeBox = Hive.box('employee');
  final Box<Employee> certificateBox = Hive.box('certificate');
  final Box<Employee> branchBox = Hive.box('branch');
}

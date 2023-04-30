/*

  Created by: Bakhromjon Polat
  Created on: Apr 26 2023 16:11:28
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:hive/hive.dart';

class AppPref {
  const AppPref._();

  static final Box box = HiveBoxes.pref;

  static Future<void> setToken(String token) async {
    await box.put('token', token);
  }

  static String get token => box.get('token') ?? '';

  static Future<void> setUser(Employee employee) async {
    await box.put('employee', employee);
  }

  static Employee get employee => box.get('employee');
}

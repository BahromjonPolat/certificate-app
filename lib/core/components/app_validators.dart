/*

  Created by: Bakhromjon Polat
  Created on: Mar 12 2023 15:50:38
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/core.dart';

class AppValidators {
  static String? phone(String? value) {
    if (value == null) {
      return AppStrings.pleaseFillField;
    }

    if (value.isEmpty) {
      return AppStrings.pleaseFillField;
    } else if (!RegExp(r'^\+998\d{9}$').hasMatch(value)) {
      return "To'g'ri raqam kiriting!";
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null) {
      return "Please, Fill the field";
    }

    if (value.isEmpty) {
      return "Please, Fill the field";
    } else if (value.length < 6) {
      return "Password is not safety";
    }
    return null;
  }

  static String? general(String? value) {
    if (value == null) {
      return AppStrings.pleaseFillField;
    }

    if (value.trim().isEmpty) {
      return AppStrings.pleaseFillField;
    }
    return null;
  }

  static bool _validPattern(String value, String pattern) {
    return RegExp(pattern).hasMatch(value);
  }

  static const String _emailPattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
}

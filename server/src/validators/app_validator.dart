/*

  Created by: Bakhromjon Polat
  Created on: Apr 23 2023 09:20:36
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

class AppValidator {
  const AppValidator._();
  static String? email(dynamic value) {
    if (value == null) {
      return 'Email can not be null';
    }

    if (value is! String) {
      return 'Email must be String';
    }
    if (value.isEmpty) {
      return 'Email can not be empty';
    } else if (!RegExp(_emailPattern).hasMatch(value)) {
      return '$value is not a valid email';
    }
    return null;
  }

  static String? general(dynamic value) {
    if (value == null) {
      return 'can not be null';
    }

    if (value is! String) {
      return 'can must be String';
    }
    if (value.isEmpty) {
      return 'can not be empty';
    }
    return null;
  }

  static const String _emailPattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
}

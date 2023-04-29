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
  static String? phone(dynamic value) {
    if (value == null) {
      return 'phone can not be null';
    }

    if (value is! String) {
      return 'phone must be String';
    }
    if (value.isEmpty) {
      return 'phone can not be empty';
    } else if (!RegExp(r'^\+998\d{9}$').hasMatch(value)) {
      return '$value is not a valid phone';
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

  // static const String _phonePattern = r'^\+998(9[01345789])[0-9]{7}$';
  // static const String _emailPattern =
  //     r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
}

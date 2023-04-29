/*

  Created by: Bakhromjon Polat
  Created on: Apr 24 2023 20:31:13
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:fluent_validation/fluent_validation.dart';

class UserValidator extends AbstractValidator<Map<String, dynamic>> {
  UserValidator() {
    ruleFor((e) => e['name'], key: 'name', useKeyAsElementName: true)
        .notNull()
        .notEmpty();
  }
}

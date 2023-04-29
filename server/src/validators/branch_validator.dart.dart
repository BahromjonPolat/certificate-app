// ignore_for_file: avoid_dynamic_calls

/*

  Created by: Bakhromjon Polat
  Created on: Apr 23 2023 19:06:17
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:fluent_validation/fluent_validation.dart';

class BranchValidator extends AbstractValidator<Map<String, dynamic>> {
  BranchValidator() {
    ruleFor((e) => e['name'], key: 'name', useKeyAsElementName: true)
        .notNull()
        .notEmpty();

    ruleFor((e) => e['address'], key: 'address', useKeyAsElementName: true)
        .notNull()
        .notEmpty();

    ruleFor((e) => e['city'], key: 'city', useKeyAsElementName: true)
        .notNull()
        .notEmpty();
  }
}

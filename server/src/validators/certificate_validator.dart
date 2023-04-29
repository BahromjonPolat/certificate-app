/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 20:36:33
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:fluent_validation/fluent_validation.dart';

class CertificateValidator extends AbstractValidator<Map<String, dynamic>> {
  CertificateValidator() {
    ruleFor((e) => e['price'], key: 'price', useKeyAsElementName: true)
        .notNull()
        .greaterThan(0);

    ruleFor((e) => e['from'], key: 'from', useKeyAsElementName: true)
        .notNull()
        .greaterThan(
          DateTime.now()
              .subtract(const Duration(days: 1))
              .millisecondsSinceEpoch,
        );

    ruleFor((e) => e['to'], key: 'to', useKeyAsElementName: true)
        .notNull()
        .greaterThan(
          DateTime.now().add(const Duration(days: 1)).millisecondsSinceEpoch,
        );
  }
}

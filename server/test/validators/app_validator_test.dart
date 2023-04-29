/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 18:49:11
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:test/test.dart';
import '../../src/validators/app_validator.dart';

void main() {
  group('AppValidator', () {
    group('phone', () {
      test('returns null for valid phone number', () {
        expect(AppValidator.phone('+998931881333'), isNull);
      });

      test('returns error message for null value', () {
        expect(AppValidator.phone(null), equals('phone can not be null'));
      });

      test('returns error message for non-string value', () {
        expect(AppValidator.phone(123), equals('phone must be String'));
      });

      test('returns error message for empty string', () {
        expect(AppValidator.phone(''), equals('phone can not be empty'));
      });

      test('returns error message for invalid phone number', () {
        expect(
          AppValidator.phone('+99893188133'),
          equals('+99893188133 is not a valid phone'),
        );
      });

      test('returns null for valid phone number', () {
        expect(
          AppValidator.phone('+998881881333'),
          equals(isNull),
        );
      });
    });

    group('general', () {
      test('returns null for non-empty string', () {
        expect(AppValidator.general('hello'), isNull);
      });

      test('returns error message for null value', () {
        expect(AppValidator.general(null), equals('can not be null'));
      });

      test('returns error message for non-string value', () {
        expect(AppValidator.general(123), equals('can must be String'));
      });

      test('returns error message for empty string', () {
        expect(AppValidator.general(''), equals('can not be empty'));
      });
    });
  });
}

// ignore_for_file: avoid_print

/*

  Created by: Bakhromjon Polat
  Created on: Apr 25 2023 21:09:07
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'dart:convert';

class Log {
  const Log._();

  static void d(Object? object, {String name = ''}) {
    final nameX = name.isEmpty ? '' : '[$name]';
    final text = '\x1B[94m$_time: \x1B[93m$nameX \x1B[92m$object\x1B[0m';

    print(text);
  }

  // print errors
  static void e(Object? object, {String name = ''}) {
    final nameX = name.isEmpty ? '' : '[$name]';
    final text = '\x1B[94m$_time: \x1B[93m$nameX\x1B[91m$object\x1B[0m';
    print(text);
  }

  // Pretty-print JSON
  static void j(Object? object, {String name = ''}) {
    final nameX = name.isEmpty ? '' : '[$name]';
    const encoder = JsonEncoder.withIndent(' ');
    final prettyJson = encoder.convert(object);
    final text = '\x1B[94m$_time: \x1B[93m$nameX\n\n\x1B[97m$prettyJson\x1B[0m';
    print(text);
  }

  static String get _time => DateTime.now().toIso8601String();
}

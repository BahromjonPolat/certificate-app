/*

  Created by: Bakhromjon Polat
  Created on: Apr 28 2023 23:24:17
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:math' as math;

import 'package:intl/intl.dart';

class AppFormatter {
  const AppFormatter._();

  static String formatDate(DateTime date, {String? pattern}) {
    final year = date.year;
    final year2 = date.year.toString().substring(2);
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    final hh = date.hour.toString().padLeft(2, '0');
    final mm = date.minute.toString().padLeft(2, '0');
    final ss = date.second.toString().padLeft(2, '0');

    String formatted;

    switch (pattern) {
      case 'hh:mm:ss':
        formatted = '$hh:$mm$ss';
        break;
      case 'dd.mm.yyyy':
        formatted = '$day.$month.$year';
        break;
      case 'dd.mm.yy':
        formatted = '$day.$month.$year2';
        break;

      case 'dd.mm.yyyy | hh:mm':
        formatted = '$day.$month.$year | $hh:$mm';
        break;
      case 'dd.mm.yyyy hh:mm':
        formatted = '$day.$month.$year  $hh:$mm';
        break;

      case 'yyyy-mm-dd':
        formatted = '$year-$month-$day';
        break;

      case 'dd/mm/yyyy':
        formatted = '$day/$month/$year';
        break;

      default:
        formatted = '$day/$month/$year $hh:$mm';
    }

    return formatted;
  }

  static String deletePhoneCharacters(String phone) {
    return '+998$phone'.replaceAll(RegExp('[^0-9+]'), '');
  }

  static String formatNumber(num number) {
    final format = NumberFormat.currency(
      decimalDigits: 0,
      name: '',
    );

    return format.format(number);
  }

  static String formatBytes(int bytes, {int decimals = 2}) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
    final i = (math.log(bytes) / math.log(1024)).floor();
    return '${(bytes / math.pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }

  static DateTime parseDate(String date) {
    if (date.isEmpty) return DateTime(2000);
    final dates = date.split('.').map(int.parse).toList();
    return DateTime(dates[2], dates[1], dates[0]);
  }

  static String formatDateFromMills(int timestamp, {String? pattern}) {
    if (timestamp == 0) return '-';
    return formatDate(
      DateTime.fromMillisecondsSinceEpoch(timestamp),
      pattern: pattern,
    );
  }
}

/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 18:58:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:flutter/material.dart';

class AppCalendar {
  final BuildContext _context;
  const AppCalendar(BuildContext context) : _context = context;

  Future<void> show({
    required ValueChanged<DateTime?> onDateSelected,
    int initial = 0,
  }) async {
    DateTime initialDate = initial != 0
        ? DateTime.fromMillisecondsSinceEpoch(initial)
        : DateTime.now();
    DateTime? date = await showDatePicker(
      context: _context,
      initialDate: initialDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 360)),
    );
    onDateSelected.call(date);
  }
}

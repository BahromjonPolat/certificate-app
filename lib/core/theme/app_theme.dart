/*

  Created by: Bakhromjon Polat
  Created on: Mar 10 2023 22:58:18
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        canvasColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF92A3FD),
              foregroundColor: Colors.white,
              fixedSize: const Size(double.infinity, 60.0)),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w600),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        )),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: const Color(0xFFF7F8F8),
          border: _inputBorder,
          errorBorder: _inputBorder,
          focusedBorder: _inputBorder,
          enabledBorder: _inputBorder,
        ),
        listTileTheme: ListTileThemeData(
          tileColor: const Color(0xFFF7F8F8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        dialogTheme: const DialogTheme(
          actionsPadding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
      );
  static final OutlineInputBorder _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14.0),
    borderSide: BorderSide.none,
  );
}

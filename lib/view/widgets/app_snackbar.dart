/*

  Created by: Bakhromjon Polat
  Created on: Apr 12 2023 11:32:39
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';

class AppSnackbar {
  final BuildContext _context;
  AppSnackbar(BuildContext context) : _context = context;

  void show({String content = "", bool isError = false}) {
    SnackBar snackBar = SnackBar(
      duration: const Duration(seconds: 1),
      // margin: const EdgeInsets.symmetric(vertical: 64.0),
      clipBehavior: Clip.antiAlias,
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: isError ? Colors.red : Colors.green,
            radius: 16.0,
            child: Icon(
              isError ? Icons.clear : Icons.check,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12.0),
          Text(content),
        ],
      ),
    );
    ScaffoldMessenger.of(_context).showSnackBar(snackBar);
  }
}

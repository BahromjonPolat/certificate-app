/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 11:14:43
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/widgets/dialog_content.dart';
import 'package:flutter/material.dart';

class AppDialog {
  final BuildContext _context;
  AppDialog(BuildContext context) : _context = context;

  void show({
    String title = '',
    String content = '',
    VoidCallback? onYesPressed,
    String noText = AppStrings.no,
    bool showYes = true,
  }) async {
    showDialog(
      context: _context,
      builder: (context) {
        return DialogContent(
          noText: noText,
          content: content,
          onYesPressed: onYesPressed,
          title: title,
          showYes: showYes,
        );
      },
    );
  }
}

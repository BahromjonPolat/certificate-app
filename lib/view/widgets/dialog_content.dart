/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 11:17:14
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:flutter/material.dart';

class DialogContent extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onYesPressed;
  final String? noText;
  final bool showYes;

  const DialogContent({
    super.key,
    required this.content,
    required this.onYesPressed,
    required this.title,
    required this.noText,
    required this.showYes,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: AppNavigator.pop,
          child: Text(noText ?? AppStrings.no),
        ),
        TextButton(
          onPressed: onYesPressed,
          child: const Text(AppStrings.yes),
        ).onVisible(visible: showYes),
      ],
    );
  }
}

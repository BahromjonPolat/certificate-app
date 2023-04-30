/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 11:04:37
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/view/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  ConfirmPage({super.key});
  final _uniqueCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppInputField(
            controller: _uniqueCodeController,
            hint: 'Enter code',
            action: TextInputAction.done,
          ),
          const SizedBox(height: 24.0),
          PrimaryButton(
            label: 'Confirm',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 11:57:46
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Employee employee;
  const AppDrawer({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text.rich(
              TextSpan(text: employee.name, children: [
                TextSpan(
                    text: '\t${employee.role}',
                    style: const TextStyle(fontSize: 10.0)),
              ]),
            ),
            accountEmail: Text(employee.phone),
          ),
        ],
      ),
    );
  }
}

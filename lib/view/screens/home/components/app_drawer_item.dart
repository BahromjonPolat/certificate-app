/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 12:03:48
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/material.dart';

class AppDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  const AppDrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      leading: Icon(icon),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    );
  }
}

/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 09:55:55
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/core.dart';
import 'package:certificate/view/screens/home/components/components.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Employee employee = AppPref.employee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConfirmPage(),
    );
  }
}

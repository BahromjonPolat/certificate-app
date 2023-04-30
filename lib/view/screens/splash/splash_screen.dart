/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 09:54:16
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:async';

import 'package:certificate/routing/app_navigator.dart';
import 'package:certificate/routing/app_route_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 1),
      () {
        AppNavigator.pushNamed(RouteNames.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'Certificate checker',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}

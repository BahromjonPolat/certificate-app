/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 09:50:49
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/routing/app_navigator.dart';
import 'package:certificate/routing/app_route_name.dart';
import 'package:certificate/routing/route_generator.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hilol nashr',
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      initialRoute: RouteNames.initial,
      navigatorKey: AppNavigator.navigatorKey,
    );
  }
}

/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 20:50:18
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/view/screens/admin/certificate_screen.dart';
import 'package:certificate/view/screens/screens.dart';
import 'package:flutter/material.dart';

import 'app_route_name.dart';

class RouteGenerator {
  RouteGenerator._();
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return _FadeRoute(
          child: const SplashScreen(),
          routeName: RouteNames.initial,
        );
      case RouteNames.home:
        return _FadeRoute(
          child: const HomeScreen(),
          routeName: RouteNames.home,
        );

      case RouteNames.login:
        return _FadeRoute(
          child: const LoginScreen(),
          routeName: RouteNames.login,
        );
      case RouteNames.branches:
        return _FadeRoute(
          child: const BranchScreen(),
          routeName: RouteNames.branches,
        );
      case RouteNames.employee:
        return _FadeRoute(
          child: const EmployeeScreen(),
          routeName: RouteNames.employee,
        );
      case RouteNames.certificate:
        return _FadeRoute(
          child: const CertificateScreen(),
          routeName: RouteNames.certificate,
        );
      default:
        return null;
    }
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;
  _FadeRoute({
    required this.child,
    required this.routeName,
  }) : super(
          settings: RouteSettings(name: routeName),
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(opacity: animation, child: child),
        );
}

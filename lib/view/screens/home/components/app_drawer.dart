/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 11:57:46
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/constants/app_strings.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/screens/home/components/app_drawer_item.dart';
import 'package:certificate/view/widgets/app_dialog.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/cupertino.dart';
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
          AppDrawerItem(
            icon: CupertinoIcons.ticket,
            title: AppStrings.vouchers,
            onTap: () {
              AppNavigator.pushNamed(RouteNames.certificate);
            },
          ),
          AppDrawerItem(
            icon: Icons.person_outline,
            title: AppStrings.employees,
            onTap: () {
              AppNavigator.pushNamed(RouteNames.employee);
            },
          ).onVisible(visible: employee.role == 'admin'),
          AppDrawerItem(
            icon: Icons.shopping_bag_outlined,
            title: AppStrings.branches,
            onTap: () {
              AppNavigator.pushNamed(RouteNames.branches);
            },
          ).onVisible(visible: employee.role == 'admin'),
          const Spacer(),
          AppDrawerItem(
            icon: Icons.logout_outlined,
            title: AppStrings.logout,
            onTap: () async {
              AppDialog dialog = AppDialog(context);

              dialog.show(
                title: AppStrings.logout,
                content: AppStrings.reallyWantToExit,
                onYesPressed: () async {
                  await Future.wait([
                    HiveBoxes.branchBox.clear(),
                    HiveBoxes.certificateBox.clear(),
                    HiveBoxes.employeeBox.clear(),
                  ]);

                  AppNavigator.pushNamedAndRemoveUntil(RouteNames.login);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 09:55:55
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/blocs/branch/branch_bloc.dart';
import 'package:certificate/blocs/certificate/certificate_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/view/screens/home/components/app_drawer.dart';
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
  late ConfirmPage confirmPage;
  @override
  void initState() {
    super.initState();

    CertificateBloc().add(const CertificateEvent.started());
    BranchBloc().add(const BranchEvent.started());
    confirmPage = ConfirmPage(employee: employee);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bosh sahifa')),
      drawer: AppDrawer(employee: employee),
      body: confirmPage,
    );
  }
}

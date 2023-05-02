/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 13:24:58
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/blocs/certificate/certificate_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/screens/admin/download_button.dart';
import 'package:certificate/view/widgets/certificate_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/download/download_bloc.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CertificateBloc()..add(const CertificateEvent.started()),
      child: Scaffold(
        floatingActionButton: Visibility(
          visible: AppPref.employee.role == 'admin',
          child: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              AppNavigator.pushNamed(RouteNames.createCertificate);
            },
          ),
        ),
        appBar: AppBar(
          title: const Text(AppStrings.vouchers),
          actions: [
            BlocProvider(
              create: (context) => DownloadBloc(),
              child: const DownloadButton(),
            ).onVisible(
              visible: AppPref.employee.role == 'admin',
            ),
          ],
        ),
        body: BlocConsumer<CertificateBloc, CertificateState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: (error) => Center(child: Text(error)),
              success: (certificates) {
                return CertificateListWidget(
                  certificates: certificates,
                  onSelected: null,
                );
              },
            );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}

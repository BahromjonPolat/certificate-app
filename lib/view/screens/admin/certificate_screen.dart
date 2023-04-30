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
import 'package:certificate/view/widgets/certificate_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Certificates')),
      body: BlocProvider(
        create: (_) => CertificateBloc()..add(const CertificateEvent.started()),
        child: BlocConsumer<CertificateBloc, CertificateState>(
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

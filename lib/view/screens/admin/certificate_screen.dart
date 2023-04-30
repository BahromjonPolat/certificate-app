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
                return ListView.separated(
                  itemCount: certificates.length,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                  itemBuilder: (context, index) {
                    final certificate = certificates[index];
                    final from = AppFormatter.formatDateFromMills(
                      certificate.from,
                      pattern: 'dd.mm.yyyy',
                    );
                    final to = AppFormatter.formatDateFromMills(
                      certificate.to,
                      pattern: 'dd.mm.yyyy',
                    );
                    return ListTile(
                      tileColor: certificate.enable
                          ? Colors.green.shade100
                          : Colors.red.shade100,
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: FittedBox(child: Text(certificate.uniqueCode)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppFormatter.formatNumber(certificate.price),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text('$from - $to'),
                        ],
                      ),
                    );
                  },
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

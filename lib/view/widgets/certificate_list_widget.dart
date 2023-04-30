/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 17:09:04
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/core.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';

class CertificateListWidget extends StatelessWidget {
  final List<CertificateModel> certificates;
  final ValueChanged<CertificateModel>? onSelected;
  const CertificateListWidget({
    super.key,
    required this.certificates,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.separated(
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
            onTap: onSelected != null
                ? () {
                    onSelected?.call(certificate);
                  }
                : null,
          );
        },
      ),
    );
  }
}

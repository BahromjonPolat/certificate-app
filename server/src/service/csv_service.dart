/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 06:19:27
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:io';

import 'package:common_models/common_models.dart';
import 'package:csv/csv.dart';

import '../components/app_format.dart';

class CsvService {
  factory CsvService() => _instance ?? CsvService._();
  CsvService._();
  static CsvService? _instance;

  Future<File> createCertificateCsv() async {
    final certBox = HiveBoxes.certificateBox;
    final employeeBox = HiveBoxes.employeeBox.toMap();
    final branchBox = HiveBoxes.branchBox.toMap();
    final data = [
      [
        'No.',
        'Unique code',
        'Price',
        'Status',
        'Created by',
        'From',
        'To',
        'Confirmed at',
        'Confirmed by',
        'Confirmed on',
      ],
      ...List.generate(certBox.length, (index) {
        final cert = certBox.getAt(index) ?? CertificateModel();
        final branch = branchBox[cert.confirmedBranchId];
        final employee = employeeBox[cert.confirmedEmployeeId];
        final createdBy = employeeBox[cert.createdBy];
        return [
          index + 1,
          cert.uniqueCode,
          cert.price,
          if (cert.enable) 'Active' else 'Inactive',
          createdBy?.name,
          AppFormatter.formatDateFromMills(cert.from, pattern: 'dd.mm.yyyy'),
          AppFormatter.formatDateFromMills(cert.to, pattern: 'dd.mm.yyyy'),
          if (branch != null) '${branch.name}, ${branch.address}' else '',
          employee?.name ?? '',
          if (cert.usedDate != 0)
            AppFormatter.formatDateFromMills(
              cert.usedDate,
              pattern: 'dd.mm.yyyy hh:mm',
            )
          else
            ''
        ];
      }),
    ];
    final csvData = const ListToCsvConverter().convert(data);
    const path = './public/certificate.csv';
    final file = File(path);
    // final file = File('./public/certificate.csv');
    await file.writeAsString(csvData);
    return file;
  }
}

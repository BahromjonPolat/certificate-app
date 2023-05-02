/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 06:26:56
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:common_models/common_models.dart';
import 'package:gsheets/gsheets.dart';

import '../components/app_format.dart';

class SheetsService {
  SheetsService._();

  static final SheetsService instance = SheetsService._();

  late Worksheet _worksheet;
  // Worksheet get sheet => _worksheet;

  Future<void> init({
    required String credentials,
    required String spreadsheetId,
  }) async {
    final credentialsJson = base64Decode(credentials);
    final gSheets = GSheets(String.fromCharCodes(credentialsJson));
    final spreadsheet = await gSheets.spreadsheet(spreadsheetId);
    var sheet = spreadsheet.worksheetByTitle('vouchers');
    sheet ??= await spreadsheet.addWorksheet('vouchers');
    _worksheet = sheet;
  }

  void insertCertificate(CertificateModel certificate) async {
    await _worksheet.values.insertRowByKey(
      certificate.id,
      _convertCertToSheets(certificate),
    );
  }

  List<dynamic> _convertCertToSheets(CertificateModel certificate) {
    const pattern = 'yyyy.mm.dd';
    return [
      certificate.price,
      AppFormatter.formatDateFromMills(certificate.from, pattern: pattern),
      AppFormatter.formatDateFromMills(certificate.to, pattern: pattern),
      certificate.enable,
      AppFormatter.formatDateFromMills(certificate.createdAt, pattern: pattern),
      certificate.createdByName,
      AppFormatter.formatDateFromMills(certificate.usedDate),
      certificate.branch,
      certificate.employee,
    ];
  }
}

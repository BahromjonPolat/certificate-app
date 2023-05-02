/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 22:00:10
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/responses.dart';
import '../../../../src/service/sheets_service.dart';
import '../../../../src/service/telegram_service.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.body();
  final json = jsonDecode(body) as Map<String, dynamic>;
  final id = json['id'];
  final branchId = json['branchId'];
  final box = HiveBoxes.certificateBox;

  final certificate = box.get('$id');

  if (certificate == null) {
    return AppResponse.notFound(message: 'Certificate not found');
  }

  if (!certificate.enable) {
    return AppResponse.conflict(message: 'Certificate already used');
  }

  final branchBox = HiveBoxes.branchBox;
  final branch = branchBox.get('$branchId');
  if (branch == null) {
    return AppResponse.notFound(message: 'Branch not found');
  }

  final employee = await context.read<Future<Employee>>();
  final confirmedCert = certificate.copyWith(
    usedDate: DateTime.now().millisecondsSinceEpoch,
    confirmedEmployeeId: employee.id,
    confirmedBranchId: branch.id,
    enable: false,
    employee: employee.name,
    branch: '${branch.name}, ${branch.address}',
  );

  await box.put(confirmedCert.id, confirmedCert);
  SheetsService.instance.insertCertificate(confirmedCert);
  TelegramService.instance.sendMessage(confirmedCert);

  return AppResponse.success(body: confirmedCert.toJson());
}

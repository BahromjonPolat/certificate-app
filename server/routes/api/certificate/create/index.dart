/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 20:22:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'dart:convert';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

import '../../../../src/components/responses.dart';
import '../../../../src/service/sheets_service.dart';
import '../../../../src/service/telegram_service.dart';
import '../../../../src/validators/certificate_validator.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.body();
  final json = jsonDecode(body) as Map<String, dynamic>;
  final branchValidator = CertificateValidator();
  final result = branchValidator.validate(json);

  if (result.hasError) {
    return AppResponse.validationError(errors: result.toJson());
  }

  final from = json['from'] as int;
  final to = json['to'] as int;

  if (from > to) {
    return AppResponse.badRequest(message: 'to must be greater then from');
  }
  final employee = await context.read<Future<Employee>>();
  final id = const Uuid().v4();

  final certificate = CertificateModel(
    id: id,
    from: from,
    to: to,
    price: json['price'] as int,
    uniqueCode: id,
    createdBy: employee.id,
    createdAt: DateTime.now().millisecondsSinceEpoch,
    enable: true,
    createdByName: employee.name,
  );

  final box = HiveBoxes.certificateBox;
  await box.put(id, certificate);
  SheetsService.instance.insertCertificate(certificate);
  TelegramService.instance.sendMessage(certificate);

  return AppResponse.success(body: certificate.toJson());
}

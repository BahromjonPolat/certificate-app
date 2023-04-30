/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 20:35:37
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/responses.dart';

Future<Response> onRequest(RequestContext context) async {
  final params = context.request.url.queryParameters;
  final status = params['status'];

  final certificateBox = HiveBoxes.certificateBox;
  var certificates = <CertificateModel>[];
  if (status == 'active') {
    certificates = certificateBox.values.where((cert) => cert.enable).toList();
  } else if (status == 'inactive') {
    certificates = certificateBox.values.where((cert) => !cert.enable).toList();
  } else {
    certificates = certificateBox.values.toList();
  }

  return AppResponse.success(
    body: {
      'total': certificates.length,
      'data': certificates.map((e) => e.toJson()).toList(),
    },
  );
}

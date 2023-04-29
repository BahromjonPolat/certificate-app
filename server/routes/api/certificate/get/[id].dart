/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 21:45:09
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/responses.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final box = HiveBoxes.certificateBox;
  final certificate = box.get(id);
  if (certificate == null) {
    return AppResponse.notFound(message: 'Certificate not found');
  }
  return AppResponse.success(body: certificate.toJson());
}

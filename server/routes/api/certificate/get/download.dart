/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 06:17:45
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/responses.dart';
import '../../../../src/service/csv_service.dart';

Future<Response> onRequest(RequestContext context) async {
  final certificate = await CsvService().createCertificateCsv();
  final url = context.request.uri.origin;
  final fileName = certificate.path.split('/').last;
  return AppResponse.success(
    body: {'file_url': '$url/$fileName'},
  );
}

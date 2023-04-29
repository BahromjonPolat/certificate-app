/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 20:11:20
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
  final branchBox = HiveBoxes.branchBox;
  final branches = branchBox.values.map((e) => e.toJson()).toList();
  return AppResponse.success(
    body: {
      'total': branches.length,
      'data': branches,
    },
  );
}

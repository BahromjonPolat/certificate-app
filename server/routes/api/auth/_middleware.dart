/*

  Created by: Bakhromjon Polat
  Created on: Apr 21 2023 07:40:32
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:dart_frog/dart_frog.dart';

import '../../../src/middleware/http_methods_middleware.dart';
import '../../../src/middleware/json_middleware.dart';

Handler middleware(Handler handler) {
  return handler
      .use(onPhoneAndPasswordMiddleware)
      .use(jsonMiddleware)
      .use(onPostRequestMiddleware);
}

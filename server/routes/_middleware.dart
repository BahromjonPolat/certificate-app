/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 19:00:11
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) => handler.use(requestLogger());

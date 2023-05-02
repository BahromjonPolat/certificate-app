/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 11:06:30
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:flutter/cupertino.dart';

extension WidgetExt on Widget {
  Widget onVisible({bool visible = true}) => Visibility(
        visible: visible,
        child: this,
      );
}

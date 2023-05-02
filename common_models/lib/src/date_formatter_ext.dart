/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 08:09:55
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
extension DateExt on String {
  int convertStringToDate() {
    List<String> dates = this.split('.');
    int year = int.parse(dates[0]);
    int month = int.parse(dates[1]);
    int day = int.parse(dates[2]);
    return DateTime(year, month, day).millisecondsSinceEpoch;
  }
}

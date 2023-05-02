/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 09:42:53
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';

import '../components/app_format.dart';
import 'package:http/http.dart' as http;

import '../components/logger.dart';

class TelegramService {
  TelegramService._();
  late String? _botToken;
  late String? _chatId;
  static final TelegramService instance = TelegramService._();
  void init({
    required String? botToken,
    required String? chatId,
  }) {
    _botToken = botToken;
    _chatId = chatId;
  }

  void sendMessage(CertificateModel cert) {
    final message = _message(cert);
    final uri = 'https://api.telegram.org/bot$_botToken/sendMessage';
    final url = Uri.parse(
      '$uri?chat_id=$_chatId&parse_mode=html&text=$message',
    );

    try {
      http.get(url);
    } catch (err) {
      Log.e(err, name: 'telegram_service');
    }
  }

  String _message(CertificateModel cert) {
    final createdDate = AppFormatter.formatDateFromMills(cert.createdAt);
    final from = AppFormatter.formatDateFromMills(cert.from);
    final to = AppFormatter.formatDateFromMills(cert.to);
    final confirmed = AppFormatter.formatDateFromMills(cert.usedDate);
    var confirmedInfo = '';
    if (confirmed != '-') {
      confirmedInfo = '''<b>Tasdiqlangan vaqti:</b> $confirmed
<b>Tasdiqlagan xodim:</b> ${cert.employee}
<b>Tasdiqlangan filial:</b> ${cert.branch}
''';
    }
    final messageString = '''
<b>${cert.id}</b>

<b>Qo'shilgan vaqti:</b> $createdDate
<b>Qo'shgan xodim:</b> ${cert.createdByName}
<b>Narxi:</b> ${cert.price}
<b>Holati:</b> ${cert.enable ? "FAOL" : "NOFAOL"} 
<b>Amal qilish boshlanishi:</b> ${from}
<b>Muddat tugashi:</b> $to
$confirmedInfo
''';
    return messageString;
  }
}

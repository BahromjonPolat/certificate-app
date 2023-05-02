import 'dart:io';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';

import 'src/components/jwt_service.dart';
import 'src/service/sheets_service.dart';
import 'src/service/telegram_service.dart';

Future<HttpServer> run(
  Handler handler,
  InternetAddress ip,
  int port,
) async {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final jwtSecret = env['JWT_SECRET'];
  final googleServiceAccountJson = env['GOOGLE_SERVICE_ACCOUNT_JSON_BASE64'];
  final spreadsheetId = env['SPREADSHEET'];
  final telegramBotToken = env['TELEGRAM_BOT_TOKEN'];
  final telegramChatId = env['TELEGRAM_CHAT_ID'];

  if (jwtSecret == null) {
    throw Exception('JWT secret key cannot be null');
  }

  if (googleServiceAccountJson == null) {
    throw Exception('Google service account cannot be null');
  }

  if (spreadsheetId == null) {
    throw Exception('Spreadsheet cannot be null');
  }

  if (googleServiceAccountJson == telegramBotToken) {
    throw Exception('Telegram bot token cannot be null');
  }

  if (spreadsheetId == telegramChatId) {
    throw Exception('Telegram chat id cannot be null');
  }

  await HiveService.initialize('./hive');
  JwtService.instance.init(issuer: 'Hilol nashr', secretKey: jwtSecret);
  TelegramService.instance.init(
    botToken: telegramBotToken,
    chatId: telegramChatId,
  );
  await SheetsService.instance.init(
    credentials: googleServiceAccountJson,
    spreadsheetId: spreadsheetId,
  );

  return serve(handler, ip, port);
}

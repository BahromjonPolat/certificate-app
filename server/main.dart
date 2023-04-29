import 'dart:io';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

Future<HttpServer> run(
  Handler handler,
  InternetAddress ip,
  int port,
) async {
  await HiveService.initialize('./hive');

  return serve(handler, ip, port);
}

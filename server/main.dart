import 'dart:io';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import 'src/components/jwt_service.dart';

Future<HttpServer> run(
  Handler handler,
  InternetAddress ip,
  int port,
) async {
  await HiveService.initialize('./hive');
  JwtService.instance.init(issuer: 'Hilol nashr', secretKey: 'secret');

  return serve(handler, ip, port);
}

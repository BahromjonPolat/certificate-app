import 'package:certificate/app.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  await HiveService.initialize(dir.path);

  runApp(const AppWidget());
}

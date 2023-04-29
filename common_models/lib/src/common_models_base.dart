import 'package:common_models/src/hive/hive_service.dart';

class CommonModels {
  CommonModels._();

  static final CommonModels instance = CommonModels._();
  final HiveService hive = HiveService.instance;
}

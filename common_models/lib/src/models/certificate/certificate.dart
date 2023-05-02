/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 16:55:46
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsheets/gsheets.dart';
import 'package:hive/hive.dart';
import 'package:common_models/src/date_formatter_ext.dart';
part 'certificate.g.dart';
part 'certificate.freezed.dart';

@unfreezed
@HiveType(typeId: 2)
class CertificateModel with _$CertificateModel {
  factory CertificateModel({
    @HiveField(0) @Default('') String id,
    @HiveField(2) @Default('') String uniqueCode,
    @HiveField(1) @Default(0) num price,
    @HiveField(3) @Default(false) bool enable,
    @HiveField(4) @Default(0) int usedDate,
    @HiveField(5) @Default('') String confirmedEmployeeId,
    @HiveField(6) @Default('') String confirmedBranchId,
    @HiveField(7) @Default('') String createdBy,
    @HiveField(8) @Default(0) int createdAt,
    @HiveField(9) @Default(0) int from,
    @HiveField(10) @Default(0) int to,
    @HiveField(11) @Default('-') String? branch,
    @HiveField(12) @Default('-') String? employee,
    @HiveField(13) @Default('') String? createdByName,
  }) = _CertificateModel;

  factory CertificateModel.fromJson(Map<String, dynamic> json) =>
      _$CertificateModelFromJson(json);

  factory CertificateModel.fromSheet(List<Cell> cells) {
    return CertificateModel(
      id: cells[0].value,
      price: num.parse(cells[1].value),
      from: cells[2].value.convertStringToDate(),
      to: cells[3].value.convertStringToDate(),
      enable: cells[4].value == 'true',
    );
  }
}

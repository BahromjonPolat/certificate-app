/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 16:11:36
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'branch_model.g.dart';
part 'branch_model.freezed.dart';

@unfreezed
@HiveType(typeId: 1)
class BranchModel with _$BranchModel {
  factory BranchModel({
    @HiveField(0) @Default('') String id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String address,
    @HiveField(3) @Default('') String city,
    @HiveField(4) @Default('') String createdBy,
    @HiveField(5) @Default(0) int createdAt,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}

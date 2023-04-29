// ignore_for_file: public_member_api_docs, sort_constructors_first
/*

  Created by: Bakhromjon Polat
  Created on: Apr 20 2023 21:47:22
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:equatable/equatable.dart';

abstract class PayloadEntity extends Equatable {
  final String id;
  final bool isAdmin;
  final int iat;
  final String subject;
  final String iss;
  final String role;
  const PayloadEntity({
    required this.id,
    required this.isAdmin,
    required this.iat,
    required this.subject,
    required this.iss,
    required this.role,
  });

  @override
  List<Object?> get props => [id, isAdmin, iat, subject, iss, role];
}

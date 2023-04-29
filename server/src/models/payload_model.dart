/*

  Created by: Bakhromjon Polat
  Created on: Apr 20 2023 21:50:10
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'payload_entity.dart';

class Payload extends PayloadEntity {
  const Payload({
    String? id,
    bool? isAdmin,
    int? iat,
    String? subject,
    String? iss,
    String? role,
  }) : super(
          iat: iat ?? 0,
          id: id ?? '',
          isAdmin: isAdmin ?? false,
          iss: iss ?? '',
          subject: subject ?? '',
          role: role ?? '',
        );

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        iat: json['iat'] as int?,
        id: (json['id'] ?? json['_id']) as String?,
        isAdmin: json['is_admin'] as bool?,
        iss: json['iss'] as String?,
        subject: json['sub'] as String?,
        role: json['role'] as String?,
      );

  @override
  String toString() {
    return '''Payload(id: $id, iat: $iat, isAdmin: $isAdmin, subject: $subject, role: $role)''';
  }
}

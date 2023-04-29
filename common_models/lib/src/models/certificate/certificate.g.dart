// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CertificateModel _$$_CertificateModelFromJson(Map<String, dynamic> json) =>
    _$_CertificateModel(
      id: json['id'] as String? ?? '',
      uniqueCode: json['uniqueCode'] as String? ?? '',
      price: json['price'] as num? ?? 0,
      enable: json['enable'] as bool? ?? false,
      usedDate: json['usedDate'] as int? ?? 0,
      confirmedEmployeeId: json['confirmedEmployeeId'] as String? ?? '',
      confirmedBranchId: json['confirmedBranchId'] as String? ?? '',
    );

Map<String, dynamic> _$$_CertificateModelToJson(_$_CertificateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uniqueCode': instance.uniqueCode,
      'price': instance.price,
      'enable': instance.enable,
      'usedDate': instance.usedDate,
      'confirmedEmployeeId': instance.confirmedEmployeeId,
      'confirmedBranchId': instance.confirmedBranchId,
    };

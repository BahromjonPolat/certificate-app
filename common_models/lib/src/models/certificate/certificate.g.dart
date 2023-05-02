// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CertificateModelAdapter extends TypeAdapter<CertificateModel> {
  @override
  final int typeId = 2;

  @override
  CertificateModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CertificateModel(
      id: fields[0] as String,
      uniqueCode: fields[2] as String,
      price: fields[1] as num,
      enable: fields[3] as bool,
      usedDate: fields[4] as int,
      confirmedEmployeeId: fields[5] as String,
      confirmedBranchId: fields[6] as String,
      createdBy: fields[7] as String,
      createdAt: fields[8] as int,
      from: fields[9] as int,
      to: fields[10] as int,
      branch: fields[11] as String?,
      employee: fields[12] as String?,
      createdByName: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CertificateModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.uniqueCode)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.enable)
      ..writeByte(4)
      ..write(obj.usedDate)
      ..writeByte(5)
      ..write(obj.confirmedEmployeeId)
      ..writeByte(6)
      ..write(obj.confirmedBranchId)
      ..writeByte(7)
      ..write(obj.createdBy)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.from)
      ..writeByte(10)
      ..write(obj.to)
      ..writeByte(11)
      ..write(obj.branch)
      ..writeByte(12)
      ..write(obj.employee)
      ..writeByte(13)
      ..write(obj.createdByName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CertificateModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      createdBy: json['createdBy'] as String? ?? '',
      createdAt: json['createdAt'] as int? ?? 0,
      from: json['from'] as int? ?? 0,
      to: json['to'] as int? ?? 0,
      branch: json['branch'] as String? ?? '-',
      employee: json['employee'] as String? ?? '-',
      createdByName: json['createdByName'] as String? ?? '',
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
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'from': instance.from,
      'to': instance.to,
      'branch': instance.branch,
      'employee': instance.employee,
      'createdByName': instance.createdByName,
    };

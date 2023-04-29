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
    );
  }

  @override
  void write(BinaryWriter writer, CertificateModel obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.confirmedBranchId);
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

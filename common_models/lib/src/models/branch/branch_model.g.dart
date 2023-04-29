// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BranchModelAdapter extends TypeAdapter<BranchModel> {
  @override
  final int typeId = 1;

  @override
  BranchModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BranchModel(
      id: fields[0] as String,
      name: fields[1] as String,
      address: fields[2] as String,
      city: fields[3] as String,
      createdBy: fields[4] as String,
      createdAt: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BranchModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.city)
      ..writeByte(4)
      ..write(obj.createdBy)
      ..writeByte(5)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BranchModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BranchModel _$$_BranchModelFromJson(Map<String, dynamic> json) =>
    _$_BranchModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      createdBy: json['createdBy'] as String? ?? '',
      createdAt: json['createdAt'] as int? ?? 0,
    );

Map<String, dynamic> _$$_BranchModelToJson(_$_BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
    };

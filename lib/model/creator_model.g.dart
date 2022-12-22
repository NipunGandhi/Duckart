// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreatorDataAdapter extends TypeAdapter<CreatorData> {
  @override
  final int typeId = 0;

  @override
  CreatorData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreatorData()
      ..creatorName = fields[0] as String
      ..imageUrl = fields[1] as String
      ..profession = fields[2] as String
      ..id = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, CreatorData obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.creatorName)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.profession)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatorDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

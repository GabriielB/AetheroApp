// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityAdapter extends TypeAdapter<City> {
  @override
  final typeId = 0;

  @override
  City read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return City(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      fullName: fields[2] as String,
      country: fields[3] as String,
      region: fields[4] as String?,
      latitude: (fields[5] as num).toDouble(),
      longitude: (fields[6] as num).toDouble(),
      timezone: fields[7] as String,
      placeType: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, City obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.fullName)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.region)
      ..writeByte(5)
      ..write(obj.latitude)
      ..writeByte(6)
      ..write(obj.longitude)
      ..writeByte(7)
      ..write(obj.timezone)
      ..writeByte(8)
      ..write(obj.placeType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

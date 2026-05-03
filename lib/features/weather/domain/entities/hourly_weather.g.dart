// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HourlyWeatherAdapter extends TypeAdapter<HourlyWeather> {
  @override
  final typeId = 2;

  @override
  HourlyWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HourlyWeather(
      time: fields[0] as DateTime,
      temperature: (fields[1] as num).toDouble(),
      apparentTemperature: (fields[2] as num).toDouble(),
      humidity: (fields[3] as num).toDouble(),
      windSpeed: (fields[4] as num).toDouble(),
      precipitation: (fields[5] as num).toDouble(),
      precipitationProbability: (fields[6] as num).toDouble(),
      uvIndex: (fields[7] as num).toDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, HourlyWeather obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.temperature)
      ..writeByte(2)
      ..write(obj.apparentTemperature)
      ..writeByte(3)
      ..write(obj.humidity)
      ..writeByte(4)
      ..write(obj.windSpeed)
      ..writeByte(5)
      ..write(obj.precipitation)
      ..writeByte(6)
      ..write(obj.precipitationProbability)
      ..writeByte(7)
      ..write(obj.uvIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourlyWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherAdapter extends TypeAdapter<Weather> {
  @override
  final typeId = 1;

  @override
  Weather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Weather(
      hourlyForecast: (fields[0] as List).cast<HourlyWeather>(),
      temperature: (fields[1] as num).toDouble(),
      apparentTemperature: (fields[2] as num).toDouble(),
      weatherCode: (fields[3] as num).toInt(),
      isDay: fields[4] as bool,
      windSpeed: (fields[5] as num).toDouble(),
      humidity: (fields[6] as num).toDouble(),
      uvIndex: (fields[7] as num).toDouble(),
      precipitation: (fields[8] as num).toDouble(),
      precipitationProbability: (fields[9] as num).toDouble(),
      tempMax: (fields[10] as num).toDouble(),
      tempMin: (fields[11] as num).toDouble(),
      sunrise: fields[12] as String,
      sunset: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Weather obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.hourlyForecast)
      ..writeByte(1)
      ..write(obj.temperature)
      ..writeByte(2)
      ..write(obj.apparentTemperature)
      ..writeByte(3)
      ..write(obj.weatherCode)
      ..writeByte(4)
      ..write(obj.isDay)
      ..writeByte(5)
      ..write(obj.windSpeed)
      ..writeByte(6)
      ..write(obj.humidity)
      ..writeByte(7)
      ..write(obj.uvIndex)
      ..writeByte(8)
      ..write(obj.precipitation)
      ..writeByte(9)
      ..write(obj.precipitationProbability)
      ..writeByte(10)
      ..write(obj.tempMax)
      ..writeByte(11)
      ..write(obj.tempMin)
      ..writeByte(12)
      ..write(obj.sunrise)
      ..writeByte(13)
      ..write(obj.sunset);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

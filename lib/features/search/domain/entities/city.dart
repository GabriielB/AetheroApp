import 'package:hive_ce/hive.dart';

part 'city.g.dart';

@HiveType(typeId: 0)
class City {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String fullName;

  @HiveField(3)
  final String country;

  @HiveField(4)
  final String? region;

  @HiveField(5)
  final double latitude;

  @HiveField(6)
  final double longitude;

  @HiveField(7)
  final String timezone;

  @HiveField(8)
  final String? placeType;

  const City({
    required this.id,
    required this.name,
    required this.fullName,
    required this.country,
    required this.region,
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.placeType,
  });
}

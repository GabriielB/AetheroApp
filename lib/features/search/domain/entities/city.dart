class City {
  final int id;
  final String name;
  final String fullName;
  final String country;
  final String? region;
  final double latitude;
  final double longitude;
  final String timezone;
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

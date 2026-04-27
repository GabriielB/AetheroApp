class City {
  final int id;
  final String name;
  final String country;
  final String? region;
  final double latitude;
  final double longitude;
  final String timezone;

  const City({
    required this.id,
    required this.name,
    required this.country,
    required this.region,
    required this.latitude,
    required this.longitude,
    required this.timezone,
  });
}

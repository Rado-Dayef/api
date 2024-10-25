class Coordinates {
  String latitude;
  String longitude;

  Coordinates({required this.latitude, required this.longitude});

  String get asString => "Coordinates(latitude: $latitude, longitude: $longitude)";

  factory Coordinates.asCoordinates(Map<String, dynamic> map) {
    return Coordinates(
      latitude: map["latitude"],
      longitude: map["longitude"],
    );
  }
}

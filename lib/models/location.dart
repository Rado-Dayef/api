import 'package:api_test/models/coordinates.dart';
import 'package:api_test/models/street.dart';
import 'package:api_test/models/timezone.dart';

class Location {
  String city;
  String state;
  Street street;
  String country;
  dynamic postcode;
  Timezone timezone;
  Coordinates coordinates;

  Location({
    required this.city,
    required this.state,
    required this.street,
    required this.country,
    required this.timezone,
    required this.postcode,
    required this.coordinates,
  });

  String get asString => "Location(city: $city, state: $state, postcode: $postcode, street: ${street.asString}, country: $country, timezone: ${timezone.asString}, coordinates: ${coordinates.asString})";

  factory Location.asLocation(Map<String, dynamic> map) {
    return Location(
      city: map["city"],
      state: map["state"],
      country: map["country"],
      postcode: map["postcode"],
      street: Street.asStreet(map["street"]),
      timezone: Timezone.asTimezone(map["timezone"]),
      coordinates: Coordinates.asCoordinates(map["coordinates"]),
    );
  }
}

import 'package:api_test/models/location.dart';
import 'package:api_test/models/name.dart';
import 'package:api_test/models/picture.dart';

class User {
  Name name;
  String cell;
  String email;
  String phone;
  String gender;
  Picture picture;
  Location location;

  User({
    required this.name,
    required this.cell,
    required this.email,
    required this.phone,
    required this.gender,
    required this.picture,
    required this.location,
  });

  String get asString => "User(name: ${name.asString}, cell: $cell, email: $email, phone: $phone, gender: $gender, picture: ${picture.asString}, location: ${location.asString})";

  factory User.asUser(Map<String, dynamic> map) {
    return User(
      cell: map["cell"],
      email: map["email"],
      phone: map["phone"],
      gender: map["gender"],
      name: Name.asName(map["name"]),
      picture: Picture.asPicture(map["picture"]),
      location: Location.asLocation(map["location"]),
    );
  }
}

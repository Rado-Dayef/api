import 'dart:convert';

import 'package:api_test/models/user.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  final String _url = "https://randomuser.me/api/?results=25";

  Future<dynamic> getUsers() async {
    try {
      http.Response response = await http.get(Uri.parse(_url));
      if (response.statusCode == 200) {
        List body = json.decode(response.body)["results"];
        List<User> users = body.map((user) => User.asUser(user)).toList();
        return users;
      } else {
        return "error: ${response.statusCode}";
      }
    } catch (error) {
      return "error: $error";
    }
  }
}

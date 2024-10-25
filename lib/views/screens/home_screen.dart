import 'package:api_test/constants/extensions.dart';
import 'package:api_test/controllers/home_controller.dart';
import 'package:api_test/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        title: const Text("Api Test"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: controller.users.length,
        itemBuilder: (_, int index) {
          User user = controller.users[index];
          return ListTile(
            leading: Image.network(user.picture.thumbnail),
            tileColor: Colors.blue,
            title: Text(
              user.name.first,
            ),
            subtitle: Text(
              user.email,
            ),
          );
        },
        separatorBuilder: (_, __) {
          return 10.gap;
        },
      ),
    );
  }
}

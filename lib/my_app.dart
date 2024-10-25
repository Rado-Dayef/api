import 'package:api_test/constants/binding.dart';
import 'package:api_test/views/screens/home_screen.dart';
import 'package:api_test/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: "/home",
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: "/splash",
          page: () => const SplashScreen(),
        ),
      ],
      initialBinding: Binding(),
      initialRoute: "/splash",
    );
  }
}

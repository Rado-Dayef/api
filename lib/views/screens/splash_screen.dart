import 'package:api_test/constants/extensions.dart';
import 'package:api_test/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Icon(
                Icons.http,
                size: 50,
                color: Colors.blue,
              ),
              25.gap,
              const Text(
                "Api Test",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              5.gap,
              const Text(
                "Using http Package",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const CircularProgressIndicator(
        color: Colors.blue,
      ),
    );
  }
}

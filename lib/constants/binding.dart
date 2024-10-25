import 'package:api_test/controllers/home_controller.dart';
import 'package:api_test/controllers/splash_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SplashController(),
      fenix: true,
    );
  }
}

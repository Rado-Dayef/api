import 'package:api_test/models/services/api_services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    ApiServices apiServices = ApiServices();
    apiServices.getUsers().then(
      (response) {
        Future.delayed(
          const Duration(seconds: 5),
          () => Get.offNamed(
            "/home",
            arguments: response,
          ),
        );
      },
    );
    super.onInit();
  }
}

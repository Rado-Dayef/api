import 'package:api_test/models/user.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String error = "";
  List<User> users = [];
  dynamic response = Get.arguments;

  @override
  void onInit() {
    super.onInit();
    checkResponse();
  }

  void checkResponse() {
    if (response is List<User>) {
      users = response;
    } else {
      error = response;
    }
  }
}

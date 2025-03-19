import 'package:get/get.dart';

class AuthController extends GetxController{
  ///***** Password Visibility for SignIn Page ******

  RxBool obscureText = true.obs;

  bool get passwordVisible => obscureText.value;

  set doPasswordVisible(bool value) {
    obscureText.value = value;
    update();
  }
}

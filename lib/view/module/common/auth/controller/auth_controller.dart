import 'dart:async';

import 'package:get/get.dart';

class AuthController extends GetxController{
  ///***** Password Visibility for SignIn Page ******

  // Sign in screen password
  RxBool obscureText = true.obs;
  bool get passwordVisible => obscureText.value;
  set doPasswordVisible(bool value) {
    obscureText.value = value;
    update();
  }

  // new password
  RxBool newObscureText = true.obs;
  bool get newPasswordVisible => newObscureText.value;
  set doNewPasswordVisible(bool value) {
    newObscureText.value = value;
    update();
  }

  // confirm password
  RxBool confirmObscureText = true.obs;
  bool get confirmPasswordVisible => confirmObscureText.value;
  set doConfirmPasswordVisible(bool value) {
    confirmObscureText.value = value;
    update();
  }

  // SignIn password
  RxBool signInObscureText = true.obs;
  bool get signInPasswordVisible => signInObscureText.value;
  set doSignInPasswordVisible(bool value) {
    signInObscureText.value = value;
    update();
  }

  // SignIn confirm password
  RxBool signInConfirmObscureText = true.obs;
  bool get signInConfirmPasswordVisible => signInConfirmObscureText.value;
  set doSignInConfirmPasswordVisible(bool value) {
    signInConfirmObscureText.value = value;
    update();
  }

  // Old password
  RxBool oldPasswordObscureText = true.obs;
  bool get oldPasswordObscureTextVisible => oldPasswordObscureText.value;
  set doOldPasswordObscureTextVisible(bool value) {
    oldPasswordObscureText.value = value;
    update();
  }


  /// Timer
  Timer? _timer;
  int remainingSeconds = 1;
  final time = '00.00'.obs;
  bool isTimerRunning = false;
  @override
  void onReady() {
    if (!isTimerRunning) {
      _startTimer(300);
      isTimerRunning = true;
    }
    super.onReady();
  }

  @override
  void onClose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.onClose();
  }

  _startTimer(int seconds) {
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    _timer = Timer.periodic(duration, (Timer timer) {
      if (remainingSeconds == 0) {
        timer.cancel();
        isTimerRunning = false;
      } else {
        int minutes = remainingSeconds ~/ 60;
        int seconds = (remainingSeconds % 60);
        time.value = "${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}";
        remainingSeconds--;
      }
    });
  }

  // check type
  var type="".obs;
  void checkType(String newType){
    type.value=newType;
  }
  // Check box
  // Separate observables for each checkbox
  var isUserChecked = false.obs;
  var isDriverChecked = false.obs;

  // Toggle functions for each checkbox
  void toggleUserCheckbox() {
    isUserChecked.value = !isUserChecked.value;
    // Uncheck Driver if User is checked (optional, based on your requirement)
    if (isUserChecked.value) {
      isDriverChecked.value = false;
    }
  }

  void toggleDriverCheckbox() {
    isDriverChecked.value = !isDriverChecked.value;
    if (isDriverChecked.value) {
      isUserChecked.value = false;
    }
  }

  // Flutter checkbox
  var isChecked = false.obs;
  // Function to toggle the checkbox state
  void toggleCheckbox() {
    isChecked.value = !isChecked.value;
  }
}

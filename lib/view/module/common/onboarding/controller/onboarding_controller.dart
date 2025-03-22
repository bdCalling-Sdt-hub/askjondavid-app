import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  PageController pageController = PageController();

  // Method to go to next page
  void nextPage() {
    if (currentPage.value < 1) {
      currentPage.value++;
      pageController.nextPage(
        duration: Duration(microseconds: 300),
        curve: Curves.easeIn
      );
    }
  }

  // Method to skip the onboarding
  void skip(){
    Get.toNamed(AppRoute.landingScreen);
  }

  // Method to complete onboarding and navigate to the main screen
  void completeOnBoarding(){
    Get.toNamed(AppRoute.landingScreen);
  }


}

import 'package:get/get.dart';
import 'package:luxury_car_service/core/dependency/dependency.dart';
import 'package:luxury_car_service/view/module/common/auth/view/sign_in_screen.dart';
import 'package:luxury_car_service/view/module/common/home_screen.dart';
import 'package:luxury_car_service/view/module/common/onboarding/view/onboarding_screen.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_one.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_two.dart';


class AppRoute {
  ///==================== Initial Routes ====================

  static const String splashScreenOne = "/splash_screen_one";
  static const String splashScreenTwo = "/splash_screen_two";
  static const String homeScreen = "/home_screen";
  static const String onboardingScreen = "/onboarding_screen";
  static const String signInScreen = "/sign_in_screen";


  static List<GetPage> routes = [
    ///==================== Initial Routes ====================

    GetPage(name: splashScreenOne, page: () => const SplashScreenOne()),
    GetPage(name: splashScreenTwo, page: () => const SplashScreenTwo()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: onboardingScreen, page: () => const OnboardingScreen(), binding: DependencyInjection()),

    ///===================== Auth Routes ========================
    GetPage(name: signInScreen, page: () => const SignInScreen(), binding: DependencyInjection()),

  ];
}

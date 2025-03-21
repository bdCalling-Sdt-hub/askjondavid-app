import 'package:get/get.dart';
import 'package:luxury_car_service/core/dependency/dependency.dart';
import 'package:luxury_car_service/view/module/common/auth/view/account_verify.dart';
import 'package:luxury_car_service/view/module/common/auth/view/create_account.dart';
import 'package:luxury_car_service/view/module/common/auth/view/create_password.dart';
import 'package:luxury_car_service/view/module/common/auth/view/forgot_password.dart';
import 'package:luxury_car_service/view/module/common/auth/view/sign_in_screen.dart';
import 'package:luxury_car_service/view/module/common/home_screen.dart';
import 'package:luxury_car_service/view/module/common/onboarding/view/onboarding_screen.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_one.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_two.dart';
import 'package:luxury_car_service/view/module/customer/home/view/landing_screen.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/bespoke_service/bespoke_service.dart';


class AppRoute {
  ///==================== Initial Routes ====================

  static const String splashScreenOne = "/splash_screen_one";
  static const String splashScreenTwo = "/splash_screen_two";
  static const String homeScreen = "/home_screen";
  static const String onboardingScreen = "/onboarding_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String forgotPassword = "/forgot_password";
  static const String accountVerify = "/account_verify";
  static const String createPassword = "/create_password";
  static const String createAccount = "/create_account";
  static const String landingScreen = "/landing_screen";
  static const String bespokeScreen = "/basepoke_screen";


  static List<GetPage> routes = [
    ///==================== Initial Routes ====================
    GetPage(name: splashScreenOne, page: () => const SplashScreenOne()),
    GetPage(name: splashScreenTwo, page: () => const SplashScreenTwo()),
    GetPage(name: homeScreen, page: () => const CommonHomeScreen()),
    GetPage(name: onboardingScreen, page: () => const OnboardingScreen(), binding: DependencyInjection()),

    ///===================== Auth Routes ========================
    GetPage(name: signInScreen, page: () => const SignInScreen(), binding: DependencyInjection()),
    GetPage(name: forgotPassword, page: () => const ForgotPassword(), binding: DependencyInjection()),
    GetPage(name: accountVerify, page: () => const AccountVerify(), binding: DependencyInjection()),
    GetPage(name: createPassword, page: () => const CreatePassword(), binding: DependencyInjection()),
    GetPage(name: createAccount, page: () => const CreateAccountScreen(), binding: DependencyInjection()),
    GetPage(name: signInScreen, page: () => const SignInScreen(), binding: DependencyInjection()),

    ///===================== Home Routes ========================
    GetPage(name: landingScreen, page: () => LandingScreen(), binding: DependencyInjection()),
    GetPage(name: bespokeScreen, page: () => BespokeServiceScreen(), binding: DependencyInjection()),
  ];
}

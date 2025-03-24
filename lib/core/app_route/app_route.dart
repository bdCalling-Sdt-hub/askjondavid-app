import 'package:get/get.dart';
import 'package:luxury_car_service/core/dependency/dependency.dart';
import 'package:luxury_car_service/view/module/common/auth/view/account_verify.dart';
import 'package:luxury_car_service/view/module/common/auth/view/create_account.dart';
import 'package:luxury_car_service/view/module/common/auth/view/create_password.dart';
import 'package:luxury_car_service/view/module/common/auth/view/forgot_password.dart';
import 'package:luxury_car_service/view/module/common/auth/view/sign_in_screen.dart';
import 'package:luxury_car_service/view/module/common/onboarding/view/onboarding_screen.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_one.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_two.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/order_details.dart';
import 'package:luxury_car_service/view/module/customer/home/view/landing_screen.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/bespoke_service/bespoke_service.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/bespoke_service/bespoke_service_details.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/private_driver/private_driver.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/private_driver/reliable_transportation.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/security_personnel_management/security_personnel_details.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/security_personnel_management/security_personnel_management.dart';


class AppRoute {
  ///==================== Initial Routes ====================

  static const String splashScreenOne = "/splash_screen_one";
  static const String splashScreenTwo = "/splash_screen_two";
  static const String onboardingScreen = "/onboarding_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String forgotPassword = "/forgot_password";
  static const String accountVerify = "/account_verify";
  static const String createPassword = "/create_password";
  static const String createAccount = "/create_account";
  static const String landingScreen = "/landing_screen";
  static const String bespokeScreen = "/basepoke_screen";
  static const String bespokeServiceDetailsScreen = "/basepoke_service_details_screen";
  static const String privateDriver = "/private_driver";
  static const String reliableTransport = "/reliable_transport";
  static const String securityPersonnelManagement = "/security_persional_management";
  static const String securityPersonnelDetails = "/security_personnel_details";
  static const String orderDetails = "/order_details";


  static List<GetPage> routes = [
    ///==================== Initial Routes ====================
    GetPage(name: splashScreenOne, page: () => const SplashScreenOne()),
    GetPage(name: splashScreenTwo, page: () => const SplashScreenTwo()),
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
    GetPage(name: bespokeServiceDetailsScreen, page: () => BespokeServiceDetailsScreen(), binding: DependencyInjection()),
    GetPage(name: privateDriver, page: () => PrivateDriver(), binding: DependencyInjection()),
    GetPage(name: reliableTransport, page: () => ReliableTransportation(), binding: DependencyInjection()),
    GetPage(name: securityPersonnelManagement, page: () => SecurityPersonnelManagement(), binding: DependencyInjection()),
    GetPage(name: securityPersonnelDetails, page: () => SecurityPersonnelDetails(), binding: DependencyInjection()),

    ///===================== Booking Routes ========================
    GetPage(name: orderDetails, page: () => OrderDetailsScreen(), binding: DependencyInjection()),
  ];
}

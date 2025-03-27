import 'package:get/get.dart';
import 'package:luxury_car_service/core/dependency/dependency.dart';
import 'package:luxury_car_service/view/module/common/auth/view/account_verify.dart';
import 'package:luxury_car_service/view/module/common/auth/view/create_account.dart';
import 'package:luxury_car_service/view/module/common/auth/view/create_password.dart';
import 'package:luxury_car_service/view/module/common/auth/view/forgot_password.dart';
import 'package:luxury_car_service/view/module/common/auth/view/sign_in_screen.dart';
import 'package:luxury_car_service/view/module/common/chat_screen.dart';
import 'package:luxury_car_service/view/module/common/notification/view/notification.dart';
import 'package:luxury_car_service/view/module/common/onboarding/view/onboarding_screen.dart';
import 'package:luxury_car_service/view/module/common/setting/view/about_us.dart';
import 'package:luxury_car_service/view/module/common/setting/view/change_password.dart';
import 'package:luxury_car_service/view/module/common/setting/view/privacy_policy.dart';
import 'package:luxury_car_service/view/module/common/setting/view/setting_screen.dart';
import 'package:luxury_car_service/view/module/common/setting/view/terms_conditions.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_one.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_two.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/order_details.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/review_screen.dart';
import 'package:luxury_car_service/view/module/customer/home/view/landing_screen.dart';
import 'package:luxury_car_service/view/module/customer/home/view/packages_screen.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/bespoke_service/bespoke_service.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/bespoke_service/bespoke_service_details.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/private_driver/private_driver.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/private_driver/reliable_transportation.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/security_personnel_management/security_personnel_details.dart';
import 'package:luxury_car_service/view/module/customer/home/view/service/security_personnel_management/security_personnel_management.dart';
import 'package:luxury_car_service/view/module/customer/payment/view/payment.dart';
import 'package:luxury_car_service/view/module/customer/payment/view/payment_successful.dart';
import 'package:luxury_car_service/view/module/customer/profile/edit_profile.dart';
import 'package:luxury_car_service/view/module/customer/profile/personal_information.dart';
import 'package:luxury_car_service/view/module/customer/profile/subscription.dart';
import 'package:luxury_car_service/view/module/driver/document_upload/view/document_upload.dart';
import 'package:luxury_car_service/view/module/driver/document_upload/view/upload_driving_licence.dart';
import 'package:luxury_car_service/view/module/driver/document_upload/view/upload_id_card.dart';
import 'package:luxury_car_service/view/module/driver/document_upload/view/vehicle_fitness.dart';
import 'package:luxury_car_service/view/module/driver/document_upload/view/vehicle_registration.dart';
import 'package:luxury_car_service/view/module/driver/driver_booking/view/driver_reservation_details.dart';
import 'package:luxury_car_service/view/module/driver/driver_home/driver_landign_screen.dart';
import 'package:luxury_car_service/view/module/driver/service/view/add_service.dart';


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
  static const String reviewScreen = "/review_screen";
  static const String messageScreen = "/message_screen";
  static const String personalInformation = "/personal_information";
  static const String editProfile = "/edit_profile";
  static const String subscription = "/subscripton";
  static const String packages = "/packages";
  static const String notification = "/notification_screen";
  static const String payment = "/payment";
  static const String paymentSuccessful = "/payment_successful";
  static const String settingScreen = "/setting_screen";
  static const String changePassword = "/change_password";
  static const String aboutUs = "/about_us";
  static const String termsAndCondition = "/terms_condition";
  static const String privacyPolicy = "/privacy_policy";
  static const String driverLanding = "/driver_landing";
  static const String reservationDetails = "/reservation_details";
  static const String addService = "/add_service";
  static const String documentUpload = "/document_upload";
  static const String uploadIdCard = "/upload_id_card";
  static const String uploadDrivingLicence = "/upload_driving_licence";
  static const String vehicleRegistration = "/upload_vehicle_registration";
  static const String vehicleFitness = "/vehicle_fitness";


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
    GetPage(name: reviewScreen, page: () => ReviewScreen(), binding: DependencyInjection()),

    ///===================== Chat Screen ===========================
    GetPage(name: messageScreen, page: () => MessageScreen(), binding: DependencyInjection()),

    ///===================== Personal Information===================
    GetPage(name: personalInformation, page: () => PersonalInformation(), binding: DependencyInjection()),
    GetPage(name: editProfile, page: () => EditProfile(), binding: DependencyInjection()),
    GetPage(name: subscription, page: () => Subscription(), binding: DependencyInjection()),
    GetPage(name: packages, page: () => PackagesScreen(), binding: DependencyInjection()),

    ///===================== Notification ===================
    GetPage(name: notification, page: () => NotificationScreen(), binding: DependencyInjection()),

    ///===================== Payment ===================
    GetPage(name: payment, page: () => PaymentScreen(), binding: DependencyInjection()),
    GetPage(name: paymentSuccessful, page: () => PaymentSuccessful(), binding: DependencyInjection()),

    ///===================== Setting ===================
    GetPage(name: settingScreen, page: () => SettingScreen(), binding: DependencyInjection()),
    GetPage(name: changePassword, page: () => ChangePassword(), binding: DependencyInjection()),
    GetPage(name: aboutUs, page: () => AboutUs(), binding: DependencyInjection()),
    GetPage(name: termsAndCondition, page: () => TermsConditions(), binding: DependencyInjection()),
    GetPage(name: privacyPolicy, page: () => PrivacyPolicy(), binding: DependencyInjection()),

    ///===================== Driver Part ===================
    GetPage(name: driverLanding, page: () => DriverLandingScreen(), binding: DependencyInjection()),
    GetPage(name: reservationDetails, page: () => ReservationDetails(), binding: DependencyInjection()),
    GetPage(name: addService, page: () => AddServiceScreen(), binding: DependencyInjection()),
    GetPage(name: documentUpload, page: () => DocumentUpload(), binding: DependencyInjection()),
    GetPage(name: uploadIdCard, page: () => UploadIdCard(), binding: DependencyInjection()),
    GetPage(name: uploadDrivingLicence, page: () => UploadDrivingLicence(), binding: DependencyInjection()),
    GetPage(name: vehicleRegistration, page: () => VehicleRegistration(), binding: DependencyInjection()),
    GetPage(name: vehicleFitness, page: () => VehicleFitness(), binding: DependencyInjection()),
  ];
}

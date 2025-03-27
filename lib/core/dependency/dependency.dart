import 'package:get/get.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/module/common/onboarding/controller/onboarding_controller.dart';
import 'package:luxury_car_service/view/module/customer/chat/controller/chat_controller.dart';
import 'package:luxury_car_service/view/module/customer/home/controller/home_controller.dart';
import 'package:luxury_car_service/view/module/driver/service/controller/service_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {

    ///================ Onboarding Controller =================
    Get.lazyPut(() => OnboardingController(), fenix: true);

    ///================ Auth Controller =================
    Get.lazyPut(() => AuthController(), fenix: true);

    ///================ Home Controller =================
    Get.lazyPut(() => HomeController(), fenix: true);

    ///================ Chat Controller =================
    Get.lazyPut(() => ChatController(), fenix: true);

    ///================ Service Controller =================
    Get.lazyPut(() => ServiceController(), fenix: true);

  }
}

import 'package:get/get.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/module/common/onboarding/controller/onboarding_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {

    ///================ Onboarding Controller =================
    Get.lazyPut(() => OnboardingController(), fenix: true);
    Get.lazyPut(() => AuthController(), fenix: true);

  }
}

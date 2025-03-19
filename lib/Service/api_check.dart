import 'package:get/get.dart';
import 'package:luxury_car_service/Helper/shared_prefe/shared_prefe.dart';
import 'package:luxury_car_service/Utils/AppConst/app_const.dart';
import 'package:luxury_car_service/Utils/ToastMsg/toast_message.dart';



class ApiChecker {
  static void checkApi(Response response, {bool getXSnackBar = false}) async {
    if (response.statusCode == 401) {
      await SharePrefsHelper.remove(AppConstants.bearerToken);
      //Get.offAllNamed(AppRoute.signInScreen);
    } else {
      showCustomSnackBar(response.statusText!, getXSnackBar: getXSnackBar);
    }
  }
}

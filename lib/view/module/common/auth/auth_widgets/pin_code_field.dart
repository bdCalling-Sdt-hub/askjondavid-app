import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Widget buildPinCodeTextField(context) {
  final authController = Get.find<AuthController>();
  return PinCodeTextField(
    length: 4,
    animationType: AnimationType.fade,
    pinTheme: PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(16),
      fieldHeight: 62.h,
      fieldWidth: 62.w,
      activeFillColor: Color(0xFF18181A),
      selectedFillColor: Color(0xFF18181A),
      inactiveFillColor: Color(0xFF18181A),
      selectedColor:  Colors.transparent,
      inactiveColor: Colors.transparent,
      activeColor: Colors.transparent,
    ),
    animationDuration: const Duration(milliseconds: 300),
    backgroundColor: Colors.transparent,
    keyboardType: TextInputType.number,
    enableActiveFill: true,
    textStyle: TextStyles.regular24.copyWith(
      fontWeight: FontWeight.w700,
      color: Color(0xFFB8B8B8)
    ),
    // controller: authController.pinTEController,
    appContext: context,
    onCompleted: (value) {
      if (value.length == 6) {
        // authController.loginMethod();
      }
    },
  );

}

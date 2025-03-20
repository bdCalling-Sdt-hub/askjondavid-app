import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/app_logo_widget.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/email_srtick.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/pin_code_field.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class AccountVerify extends StatefulWidget {
  const AccountVerify({super.key});

  @override
  State<AccountVerify> createState() => _AccountVerifyState();
}

class _AccountVerifyState extends State<AccountVerify> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeightGap(height: 40.h),
                  // sign in page logo
                  AppLogoWidget(
                      imagePath: AppImages.verifyAccount,
                      height: 216.h,
                      width: 244.w),
                  HeightGap(height: 65.h),
                  // sign in title
                  Text(
                    "Verify your account",
                    style: TextStyles.regular24.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDBDBDB)),
                  ),
                  HeightGap(height: 12),
                  // Sign in description
                  Text(
                    "We've Sent a Code to ${obfuscateEmail("email@gmail.com")}",
                    style: TextStyles.regular16.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB8B8B8)),
                    textAlign: TextAlign.center,
                  ),
                  HeightGap(height: 28.h),
                  // pic code Field
                  buildPinCodeTextField(context),
                  HeightGap(height: 16.h),
                  _buildResendCodeSection(),
                  // Add some space for better visual alignment
                  SizedBox(height: MediaQuery.of(context).size.height * 0.17),
                  // Bottom SignUpButton
                  _bottomGetOtpButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Bottom Get OTP Button
  Align _bottomGetOtpButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 40.h),
        child: CustomButton(
          text: 'Verify',
          onTap: () {
            Get.toNamed(AppRoute.createPassword);

          },
        ),
      ),
    );
  }

  Widget _buildResendCodeSection() {
    final authController = Get.find<AuthController>();
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              if (!authController.isTimerRunning) {
                authController.onReady();
              }
            },
            child: Text(
              "Resend Code In",
              style: TextStyles.regular20.copyWith(
                color: const Color(0xFFDBDBDB),
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            authController.time.value,
            style: TextStyles.regular16.copyWith(
              color: const Color(0xFFDBCC93),
            ),
          ),
          Text(
            " s",
            style: TextStyles.regular20.copyWith(
              color: const Color(0xFFDBDBDB),
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      );
    });
  }
}

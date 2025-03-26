import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/module/common/setting/setting_widgets/setting_cart.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              HeightGap(height: 10.h),
              CustomAppBar(onTap: (){
                Get.back();
              }, title: "Setting"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    HeightGap(height: 40.h),
                    // change password
                    SettingCart(
                      svgIcon: AppImages.changePasswordSvgIcon,
                      text: "Change password",
                      onTap: (){
                        Get.toNamed(AppRoute.changePassword);
                      },
                    ),
                    HeightGap(height: 20),
                    // about us
                    SettingCart(
                      svgIcon: AppImages.aboutSvgIcon,
                      text: "About us",
                      onTap: (){
                        Get.toNamed(AppRoute.aboutUs);
                      },
                    ),
                    HeightGap(height: 20),
                    // terms and condition
                    SettingCart(
                      svgIcon: AppImages.termAndConditionSvgIcon,
                      text: "Terms & Conditions",
                      onTap: (){
                        Get.toNamed(AppRoute.termsAndCondition);
                      },
                    ),
                    HeightGap(height: 20),
                    // privacy and policy
                    SettingCart(
                      svgIcon: AppImages.privacyPolicySvgIcon,
                      text: "Privacy Policy",
                      onTap: (){
                        Get.toNamed(AppRoute.privacyPolicy);
                      },
                    ),
                    HeightGap(height: 20),
                    SettingCart(
                      svgIcon: AppImages.deleteSvgIcon,
                      text: "Delete account",
                      onTap: (){
                        showCustomDialog();
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Password
  _passwordField() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'Current Password',
      prefixIcon: Icons.lock_outline_rounded,
      hasObsecureText: true,
      obSecureText: authController.oldPasswordObscureTextVisible,
      // controller: controller,
      obsecureTextSuffixIcon: IconButton(
          onPressed: () {
            authController.doOldPasswordObscureTextVisible = !authController.oldPasswordObscureTextVisible;
          },
          icon: authController.oldPasswordObscureTextVisible
              ? const Icon(
            Icons.visibility_off_outlined,
            color: Color(0xFFB8B8B8),
            size: 14,
          )
              : const Icon(
            Icons.visibility_outlined,
            color: Color(0xFFB8B8B8),
            size: 14,
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Password can't be empty";
        } else if (value.length < 8) {
          return "Password must be at least 9 characters";
        }
        return null;
      },
    ),
    );
  }

  void showCustomDialog() {
    Get.dialog(
      Dialog(
        child: Container(
          height: 220.h,
          width: 240.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF18181a),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Please confirm your password to remove your account.',style: TextStyles.regular16.copyWith(
                fontWeight: FontWeight.w400,
                color: Color(0xFFABABAB),),
                  textAlign: TextAlign.center),
              HeightGap(height: 16.h),
              _passwordField(),
              HeightGap(height: 26.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: Container(
                          height: 48.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xFF0C0B0E),
                          ),
                          child: Center(
                            child: Text('Cancel', style: TextStyles.regular20.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFABABAB)
                            ),),
                          ),
                        ),
                        onTap: (){
                          Get.back();
                        }
                    ),
                    Container(
                      height: 48.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: DecorationImage(
                              image: AssetImage(AppImages.buttonBg),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Center(
                        child: Text('Log Out', style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF101010)
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // barrierDismissible: false,
    );
  }

}


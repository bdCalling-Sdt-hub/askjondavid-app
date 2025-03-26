import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';
class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeightGap(height: 10.h),
                        CustomAppBar(onTap: (){
                          Get.back();
                        }, title: "Change Password"),
                        HeightGap(height: 40.h),
                        _oldPasswordField(),
                        HeightGap(height: 24.h),
                        _newPasswordField(),
                        HeightGap(height: 24.h),
                        _confirmNewPasswordField()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: CustomButton(text: "Submit", onTap: (){}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // old password
  _oldPasswordField() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'Old password',
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

  // new password
  _newPasswordField() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'New password',
      prefixIcon: Icons.lock_outline_rounded,
      hasObsecureText: true,
      obSecureText: authController.newPasswordVisible,
      // controller: controller,
      obsecureTextSuffixIcon: IconButton(
          onPressed: () {
            authController.doNewPasswordVisible = !authController.newPasswordVisible;
          },
          icon: authController.newPasswordVisible
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

  // confirm new password
  _confirmNewPasswordField() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'Confirm new password',
      prefixIcon: Icons.lock_outline_rounded,
      hasObsecureText: true,
      obSecureText: authController.confirmPasswordVisible,
      // controller: controller,
      obsecureTextSuffixIcon: IconButton(
          onPressed: () {
            authController.doConfirmPasswordVisible = !authController.confirmPasswordVisible;
          },
          icon: authController.confirmPasswordVisible
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

}


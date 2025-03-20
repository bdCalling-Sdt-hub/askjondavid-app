import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/app_logo_widget.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  GlobalKey<FormState> createPassFormKey = GlobalKey<FormState>();

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
              child: Form(
                key: createPassFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeightGap(height: 40.h),
                    // sign in page logo
                    AppLogoWidget(
                        imagePath: AppImages.createNewPassword,
                        height: 220.h,
                        width: 220.w),
                    HeightGap(height: 65.h),
                    // sign in title
                    Text(
                      "Create new password",
                      style: TextStyles.regular24.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFDBDBDB)),
                    ),
                    HeightGap(height: 12),
                    // Sign in description
                    Text(
                      "Password must have 8 characters",
                      style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB8B8B8)),
                      textAlign: TextAlign.center,
                    ),
                    HeightGap(height: 28.h),
                    // New password Field
                    _newPassword(),

                    HeightGap(height: 20),
                    // Confirm password
                    _confirmPassword(),
                    HeightGap(height: 20.h),
                    // Add some space for better visual alignment
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                    // Bottom SignUpButton
                    _bottomGetOtpButton(),
                  ],
                ),
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
          text: 'Update Password',
          onTap: () {
            if (createPassFormKey.currentState!.validate()) {
            }
          },
        ),
      ),
    );
  }

  // new password
  _newPassword() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'New Password',
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

  // confirm password
  _confirmPassword() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'New Password',
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

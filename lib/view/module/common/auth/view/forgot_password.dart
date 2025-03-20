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
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> forgotPassFormKey = GlobalKey<FormState>();

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
                key: forgotPassFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeightGap(height: 40.h),
                    // sign in page logo
                    AppLogoWidget(
                        imagePath: AppImages.forgotPassword,
                        height: 260.h,
                        width: 260.w),
                    HeightGap(height: 65.h),
                    // sign in title
                    Text(
                      "Forgot password",
                      style: TextStyles.regular24.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFDBDBDB)),
                    ),
                    HeightGap(height: 12),
                    // Sign in description
                    Text(
                      "Enter your email to reset your password",
                      style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB8B8B8)),
                      textAlign: TextAlign.center,
                    ),
                    HeightGap(height: 28.h),
                    // Email Field
                    CustomTextFromField(
                      hintText: 'Enter your email',
                      prefixIcon: EvaIcons.emailOutline,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email can't be empty";
                        } else if (!GetUtils.isEmail(value)) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                    HeightGap(height: 20.h),
                    // Add some space for better visual alignment
                    SizedBox(height: MediaQuery.of(context).size.height * 0.18),
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
          text: 'Get OTP',
          onTap: () {
            if (forgotPassFormKey.currentState!.validate()) {
              Get.toNamed(AppRoute.accountVerify);
            }
          },
        ),
      ),
    );
  }
}

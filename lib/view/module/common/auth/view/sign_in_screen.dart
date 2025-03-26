import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/app_logo_widget.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/tabs/pending.dart';
import 'package:luxury_car_service/view/module/customer/home/view/packages_screen.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Form(
                  key: signInFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeightGap(height: 40.h),
                      // sing in page logo
                      AppLogoWidget(
                          imagePath: AppImages.appLogo,
                          height: 170.h,
                          width: 220.w),
                      HeightGap(height: 90.h),
                      // sign in title
                      Text(
                        "Welcome!",
                        style: TextStyles.regular24.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFDBDBDB)),
                      ),
                      HeightGap(height: 12),
                      // Sign in description
                      Text(
                        "Sign in to continue",
                        style: TextStyles.regular24.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB8B8B8)),
                      ),
                      HeightGap(height: 28.h),
                      // Email Field
                      CustomTextFromField(
                        hintText: 'Email',
                        prefixIcon: EvaIcons.emailOutline,
                        // controller: authController.emailController,
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
                      // Password Field
                      _passwordField(),
                      HeightGap(height: 20),
                      // Remember Me and Forgot Password
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoute.forgotPassword);
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password?',
                            style: TextStyles.regular16.copyWith(
                                color: Color(0xFF8DB501),
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFF8DB501)),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                      // Bottom SignUpButton
                      _bottomSignUpButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Password Field
  _passwordField() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
        hintText: 'Password',
        prefixIcon: Icons.lock_outline_rounded,
        hasObsecureText: true,
        obSecureText: authController.passwordVisible,
        // controller: controller,
        obsecureTextSuffixIcon: IconButton(
            onPressed: () {
              authController.doPasswordVisible = !authController.passwordVisible;
            },
            icon: authController.passwordVisible
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

  // Bottom SignUpButton
  Align _bottomSignUpButton() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            CustomButton(text: 'Sign In', onTap: (){
              if(signInFormKey.currentState!.validate()){
                // Get.offAllNamed(AppRoute.landingScreen);
                Get.toNamed(AppRoute.packages);
              }
            },),
            HeightGap(height: 20),
            RichText(
              text: TextSpan(
                text: 'Don’t have an account? ',
                style: TextStyles.regular14.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFE7E6E4),
                ),
                children: [
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyles.regular14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8DB501),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(AppRoute.createAccount);
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}


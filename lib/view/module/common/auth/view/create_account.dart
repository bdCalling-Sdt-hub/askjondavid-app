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
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    bool _isChecked = false;
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
                          height: 94.h,
                          width: 122.w),
                      HeightGap(height: 40.h),
                      // Select user type
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _userTypeSelection(
                            authController,
                            "User",
                            authController.isUserChecked,
                            authController.toggleUserCheckbox,
                          ),
                          _userTypeSelection(
                            authController,
                            "Driver",
                            authController.isDriverChecked,
                            authController.toggleDriverCheckbox,
                          ),
                        ],
                      ),
                      const HeightGap(height: 20),
                      // sign in title
                      Text(
                        "Create New Account",
                        style: TextStyles.regular24.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFDBDBDB)),
                      ),
                      HeightGap(height: 20),
                      // Name Field
                      CustomTextFromField(
                        hintText: 'Enter your full name',
                        prefixIcon: EvaIcons.personOutline,
                        // controller: authController.emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email can't be empty";
                          }
                          return null;
                        },
                      ),
                      HeightGap(height: 20),
                      // Email Field
                      CustomTextFromField(
                        hintText: 'Enter your email',
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
                      HeightGap(height: 20),
                      // Location Field
                      CustomTextFromField(
                        hintText: 'Enter your location',
                        prefixIcon: Icons.location_on_outlined,
                        // controller: authController.emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email can't be empty";
                          }
                          return null;
                        },
                      ),
                      HeightGap(height: 20.h),
                      // Password Field
                      _passwordField(),
                      HeightGap(height: 20),
                      _confirmPasswordField(),
                      HeightGap(height: 16),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(()=>Checkbox(
                              side: BorderSide(color: Color(0xFFB8B8B8)),
                                value: authController.isChecked.value,
                                onChanged: (bool? value) {
                                 authController.toggleCheckbox();
                                },
                                activeColor: Color(0xFFC7BA86),
                              ),
                            ),
                            checkBoxAndPolicy(),
                          ],
                        ),
                      ),
                      HeightGap(height: 20),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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

  Expanded checkBoxAndPolicy() {
    return Expanded(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'By creating an account, I accept the ',
              style: TextStyles.regular14
                  .copyWith(color: Color(0xFFB8B8B8), fontSize: 14),
            ),
            TextSpan(
              text: 'Terms & Conditions',
              style: TextStyle(
                color: Color(0xFFC7BA86),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Handle Terms & Conditions tap (navigate to a page)
                },
            ),
            TextSpan(
              text: ' & ',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                color: Color(0xFFC7BA86),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Handle Privacy Policy tap (navigate to a page)
                },
            ),
            TextSpan(
              text: '.',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
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
      obSecureText: authController.signInPasswordVisible,
      // controller: controller,
      obsecureTextSuffixIcon: IconButton(
          onPressed: () {
            authController.doSignInPasswordVisible = !authController.signInPasswordVisible;
          },
          icon: authController.signInPasswordVisible
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
          CustomButton(text: 'Next', onTap: (){
            final authController = Get.find<AuthController>();
            if(signInFormKey.currentState!.validate()){
              if(authController.type.value=="Driver"){
                Get.toNamed(AppRoute.driverLanding);
              }else{
                Get.toNamed(AppRoute.landingScreen);
              }
            }
          },),
          HeightGap(height: 20),
          RichText(
            text: TextSpan(
              text: 'Already have an account? ',
              style: TextStyles.regular14.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFFE7E6E4),
              ),
              children: [
                TextSpan(
                  text: ' Sign In',
                  style: TextStyles.regular14.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8DB501),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.back();
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Row _userTypeSelection(AuthController authController, String text, RxBool checkStatus, Function toggleFunction) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            toggleFunction();
            authController.checkType(text);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Obx(() => AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: checkStatus.value ? Color(0xFFC7BA86) : Color(0xFF606060),
                          width: 1.5)),
                  child: checkStatus.value
                      ? Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFC7BA86)),
                    ),
                  )
                      : null,
                )),
                WidthGap(width: 8),
                Obx(() => Text(
                  text,
                  style: TextStyles.regular16.copyWith(
                      color: checkStatus.value ? Color(0xFFC7BA86) : Color(0xFF606060),
                      fontWeight: FontWeight.w600),
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
  // confirm password field
  _confirmPasswordField() {
    final authController = Get.find<AuthController>();
    return Obx(()=> CustomTextFromField(
      hintText: 'Confirm password',
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


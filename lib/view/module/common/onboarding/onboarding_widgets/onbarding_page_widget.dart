import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';

Widget buildPage({
  required String image,
  required String title,
  required String description,
  required bool showButton,
  required String buttonText,
  required VoidCallback onButtonPressed,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Car image
      Spacer(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Image.asset(
          image,
          height: 250.h,
          width: double.infinity,
        ),
      ),
      SizedBox(height: 20),
      // Title
      Text(
        title,
        textAlign: TextAlign.center,
          style: TextStyles.title28.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.white50
          )
      ),
      SizedBox(height: 10),
      // Description
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyles.regular15.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFFB8B8B8)
          ),
        ),
      ),
      SizedBox(height: 30),
      // Next button or Get Started button
      Spacer(),
      if (showButton)
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0, right: 15),
            child: GestureDetector(
              onTap: onButtonPressed,
              child: Container(
                height: 44.h,
                width: 116.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF272522),
                ),
                child: Center(
                  child: Text('Next', style: TextStyles.regular20.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFDBCC93)
                  ),),
                ),
              ),
            ),
          )
        ),
      if (!showButton)
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0, left: 15, right: 15),
              child: GestureDetector(
                onTap: onButtonPressed,
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.signInScreen);
                  },
                  child: Container(
                    height: 52.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(image: AssetImage(AppImages.buttonBg), fit: BoxFit.cover)
                    ),
                    child: Center(
                      child: Text('Get Started', style: TextStyles.regular20.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF101010)
                      ),),
                    ),
                  ),
                ),
              ),
            )
        ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              HeightGap(height: 24),
              CustomAppBar(
                  onTap: () {
                    Get.back();
                  },
                  title: "Subscriptions"),
              HeightGap(height: 90.h),
              Text('Personal Driver & Concierge Service', style: TextStyles.regular16.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.appGrayColor
              ),),
              HeightGap(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("\$2,999", style: TextStyles.regular32.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFDBCC93)
                  ),),
                  Text("/monthly", style: TextStyles.regular16.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.appGrayColor
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

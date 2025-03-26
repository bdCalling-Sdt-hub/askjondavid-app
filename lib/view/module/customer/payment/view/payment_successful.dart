import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello"),
                Expanded(
                    child: SvgPictureWidget(
                  imageUrl: AppImages.paymentSuccessful,
                  height: 380.h,
                  width: 390.w,
                )),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.landingScreen);
                  },
                  child: SvgPictureWidget(imageUrl: AppImages.goToHomeButton),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

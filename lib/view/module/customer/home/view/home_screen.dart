import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPictureWidget(imageUrl: AppImages.appBarLogoSvg, height: 20, width: 20,),
                  SvgPictureWidget(imageUrl: AppImages.notificationSvg, height: 20, width: 20,)
                ],
              ),
              HeightGap(height: 28.h),
              Text(
                'Explore our service',
                style: TextStyles.regular24.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textGreyColor
                ),
              ),
              HeightGap(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ServiceCartWidget(image: AppImages.bespoke, text: "Bespoke concierge services", onTap: (){
                        Get.toNamed(AppRoute.bespokeScreen);
                      }),
                      HeightGap(height: 16),
                      ServiceCartWidget(image: AppImages.privateDriver, text: "Private drivers",onTap: (){}),
                      HeightGap(height: 16),
                      ServiceCartWidget(image: AppImages.securityPerson, text: "Security personnel management",onTap: (){}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCartWidget extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  const ServiceCartWidget({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          // Image as background
          Container(
            height: 210.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          // Gradient on top of the image
          Container(
            height: 210.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black12,
                ],
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          // Content inside the container
          Positioned(
            bottom: 13.h,
            left: 12.w,
            child: Text(
              text,
              style: TextStyles.regular16.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.textGreyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

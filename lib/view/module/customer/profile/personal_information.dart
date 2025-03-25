import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/module/customer/profile/profile_widgets/profile_image.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

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
              CustomAppBar(onTap: (){
                Get.back();
              }, title: "Personal Information"),
              HeightGap(height: 23),
              // profile image
              profileImage(),

              // profile edit
              _editProfile(),
              HeightGap(height: 12),
              _profileInfoCart(AppImages.profileIcon, "Ethan Michael"),
              HeightGap(height: 20.h),
              _profileInfoCart(AppImages.emailIcon, "ethan@gmail.com"),
              HeightGap(height: 20.h),
              _profileInfoCart(AppImages.location, "2972 Westheimer Rd. Santa Ana,85486"),
            ],
          ),
        ),
      ),
    );
  }

  Padding _profileInfoCart(String icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 52.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r), color: Color(0xFF18181A)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              SvgPictureWidget(
                  imageUrl: icon, height: 16, width: 16),
              WidthGap(width: 8.w),
              Text(
                title,
                style: TextStyles.regular16.copyWith(
                    fontWeight: FontWeight.w400, color: Color(0xFFB8B8B8)),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Edit profile
  Padding _editProfile() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: (){
            Get.toNamed(AppRoute.editProfile);
          },
          child: Container(
            height: 32.h,
            width: 106.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Color(0xFF18181A)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPictureWidget(
                    imageUrl: AppImages.editIcon,
                    height: 15.h,
                    width: 15.w,
                  ),
                  WidthGap(width: 8),
                  Text(
                    'Edit Profile',
                    style:
                        TextStyles.regular12.copyWith(color: Color(0xFFDBCC93)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

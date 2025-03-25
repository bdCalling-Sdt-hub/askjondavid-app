import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              _appBar(),
              HeightGap(height: 23),
              // profile image
              _profileImage(),
              HeightGap(height: 12),
              // name
              Text("Ethan Michael",
                  style: TextStyles.regular24.copyWith(
                      fontWeight: FontWeight.w500, color: Color(0xFFDEDEDE))),
              HeightGap(height: 50.h),
              _profileCart(AppImages.profileIcon, "Personal Information", () {}),
              HeightGap(height: 28.h),
              _profileCart(AppImages.subscription, "Subscriptions", () {}),
              HeightGap(height: 28.h),
              _profileCart(AppImages.setting, "Settings", () {}),
              HeightGap(height: 100.h),
              _logOut()
            ],
          ),
        ),
      ),
    );
  }

  // Log out
  Padding _logOut() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: (){
          showCustomDialog();
        },
        child: Row(
          children: [
            SvgPictureWidget(imageUrl: AppImages.logout, height: 20, width: 20),
            WidthGap(width: 16),
            Text(
              'Log Out',
              style: TextStyles.regular20.copyWith(
                  fontWeight: FontWeight.w400, color: Color(0xFFFC6057)),
            )
          ],
        ),
      ),
    );
  }

  // Profile Cart
  Padding _profileCart(String IconUrl, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPictureWidget(
                imageUrl: IconUrl,
                height: 20,
                width: 20,
                isWhite: true,
              ),
              WidthGap(width: 8),
              Text(
                title,
                style: TextStyles.regular20.copyWith(color: Color(0xFFB8B8B8)),
              ),
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.navigate_next_outlined,
              size: 20,
              color: Color(0xFFDBDBDB),
            ),
          )
        ],
      ),
    );
  }

  // AppBar
  Center _appBar() {
    return Center(
        child: Text(
      'Profile',
      style: TextStyles.regular24
          .copyWith(fontWeight: FontWeight.w500, color: AppColors.appGrayColor),
    ));
  }

  // Profile Image
  Container _profileImage() {
    return Container(
      height: 190.h,
      width: 190.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xFF212220),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: 190.h,
          width: 190.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
                  fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }

  // Show Dialogue
  void showCustomDialog() {
    Get.dialog(
      Dialog(
        child: Container(
          height: 200.h,
          width: 220.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF18181a),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Do you want to log out your profile?',style: TextStyles.regular24.copyWith(
                fontWeight: FontWeight.w500,
                color: Color(0xFFABABAB),),
                textAlign: TextAlign.center),
              HeightGap(height: 32.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 48.h,
                        width: 110.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xFF0C0B0E),
                        ),
                        child: Center(
                          child: Text('Cancel', style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFABABAB)
                          ),),
                        ),
                      ),
                      onTap: (){
                        Get.back();
                      }
                    ),
                    Container(
                      height: 48.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage(AppImages.buttonBg),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Center(
                        child: Text('Log Out', style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF101010)
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // barrierDismissible: false,
    );
  }
}

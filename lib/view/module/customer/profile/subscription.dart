import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightGap(height: 24),
                CustomAppBar(
                    onTap: () {
                      Get.back();
                    },
                    title: "Subscriptions"),
                HeightGap(height: 70.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Personal Driver & Concierge Service',
                    style: TextStyles.regular16.copyWith(
                        fontWeight: FontWeight.w500, color: AppColors.appGrayColor),
                  ),
                ),
                HeightGap(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$2,999",
                      style: TextStyles.regular32.copyWith(
                          fontWeight: FontWeight.w600, color: Color(0xFFDBCC93)),
                    ),
                    Text(
                      "/monthly",
                      style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.appGrayColor),
                    ),
                  ],
                ),
                HeightGap(height: 40.h),
                // Inclusion
                _inclusion(),
                // Benefit
                _benifit(),

                // Start date and end date
                HeightGap(height: 30.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Start date : 04/12/2024", style: TextStyles.regular12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB8B8B8)
                  ),),
                ),
                HeightGap(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("End date : 08/12/2024", style: TextStyles.regular12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB8B8B8)
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Inclusion
  Padding _inclusion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPictureWidget(
                imageUrl: AppImages.inclusion,
                height: 18.h,
                width: 18.w,
              ),
              WidthGap(width: 6.h),
              Text(
                "Inclusions:",
                style: TextStyles.regular16.copyWith(
                    fontWeight: FontWeight.w600, color: Color(0xFFB8B8B8)),
              ),
            ],
          ),
          HeightGap(height: 12.h),
          SizedBox(
            height: 120.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFb8b8b8)),
                      ),
                      WidthGap(width: 10),
                      Text('20 hours of service per month',
                          style: TextStyles.regular12.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFB8B8B8)))
                    ],
                  );
                },
                separatorBuilder: (__, _) {
                  return HeightGap(height: 8.h);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Benifit
  Padding _benifit() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPictureWidget(
                imageUrl: AppImages.benifit,
                height: 18.h,
                width: 18.w,
              ),
              WidthGap(width: 6.h),
              Text(
                "Benefits:",
                style: TextStyles.regular16.copyWith(
                    fontWeight: FontWeight.w600, color: Color(0xFFB8B8B8)),
              ),
            ],
          ),
          HeightGap(height: 12.h),
          SizedBox(
            height: 120.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFb8b8b8)),
                      ),
                      WidthGap(width: 10),
                      Text('24/7 availability for scheduling',
                          style: TextStyles.regular12.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFB8B8B8)))
                    ],
                  );
                },
                separatorBuilder: (__, _) {
                  return HeightGap(height: 8.h);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

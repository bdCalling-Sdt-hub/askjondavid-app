import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
          child: Column(
            children: [
              HeightGap(height: 10.h),
              CustomAppBar(
                  onTap: () {
                    Get.back();
                  },
                  title: "All Notifications"),
              HeightGap(height: 40.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 80.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Color(0xFF18181A)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPictureWidget(imageUrl: AppImages.notification, height: 24.h, width: 24.w),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 260.w,
                                        child: Text('Booking Confirmed!',style: TextStyles.regular16.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFDEDEDE),
                                            overflow: TextOverflow.ellipsis),
                                          maxLines: 1,
                                        ),
                                      ),
                                      Container(
                                        width: 300.w,
                                        child: Text('Your reservation is successfully confirmed. See you soon!',style: TextStyles.regular12.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFB8B8B8),
                                            overflow: TextOverflow.fade),
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Text('1 h',style: TextStyles.regular12.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDEDEDE)
                            ),),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (__,_){
                    return HeightGap(height: 20.h);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

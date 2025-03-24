import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/tabs/completed.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/tabs/in_progress.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/tabs/pending.dart';
import 'package:luxury_car_service/view/module/customer/booking/view/tabs/reject.dart';
import 'package:luxury_car_service/view/module/customer/home/controller/home_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Obx(()=>Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              _buildTabBar(homeController),
              HeightGap(height: 20),
              buildTabBarView(context),
            ],
          ),
        )
        )
      ),
    );
  }

  // Everything of TabBar
  Widget buildTabBar() {
    final controller = Get.find<HomeController>();
    return Obx(()=>Expanded(child: _buildTabBar(controller)));
  }

  // TabBar and Tabs
  Container _buildTabBar(HomeController homeController) {
    final homeController = Get.find<HomeController>();
    return Container(
      height: 42.h,
      decoration: BoxDecoration(color: AppColors.appBg, borderRadius: BorderRadius.circular(30.r)),
      child: TabBar(
        // tabAlignment: TabAlignment.center,
        isScrollable: false,
        padding: EdgeInsets.zero,
        onTap: (index) {
          homeController.updatedBookingTabSelectedIndex(index);
        },
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            border: Border.all(color: Colors.transparent)),
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        labelColor: Color(0xFFABABAB),
        unselectedLabelColor: AppColors.white700,
        labelStyle: TextStyles.regular20.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        labelPadding: EdgeInsets.symmetric(horizontal: 8),
        unselectedLabelStyle: TextStyles.regular20.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        tabs: [
          homeController.bookingTabIndex.value == 0
              ? Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage(AppImages.buttonBg),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Center(
                        child: Text(
                          'Pending',
                          style: TextStyles.regular12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.textBlackColor),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appGrayColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Text('Pending', style: TextStyles.regular12.copyWith(
                        color: AppColors.appGrayColor,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
          homeController.bookingTabIndex.value==1
              ? Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage(AppImages.buttonBg),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Center(
                        child: Text(
                          'In Progress',
                          style: TextStyles.regular12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.textBlackColor),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appGrayColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Text(
                        'In Progress',
                        style: TextStyles.regular12.copyWith(
                            color: AppColors.appGrayColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
          homeController.bookingTabIndex.value==2
              ? Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage(AppImages.buttonBg),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Center(
                        child: Text(
                          'Reject',
                          style: TextStyles.regular12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.textBlackColor),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appGrayColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Text(
                        'Reject',
                        style: TextStyles.regular12.copyWith(
                            color: AppColors.appGrayColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
          homeController.bookingTabIndex.value==3
              ? Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                          image: AssetImage(AppImages.buttonBg),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Center(
                        child: Text(
                          'Completed',
                          style: TextStyles.regular12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.textBlackColor),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appGrayColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Text(
                        'Completed',
                        style: TextStyles.regular12.copyWith(
                            color: AppColors.appGrayColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  // TabBar view
  Expanded buildTabBarView(context) {
    return Expanded(
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Pending(),
          InProgress(),
          Reject(),
          Completed()
        ],
      ),
    );
  }
}

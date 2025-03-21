import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/home/controller/home_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _homeController = Get.find<HomeController>();
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backgroundImage),
            fit: BoxFit.cover
          )
        ),
        child: Obx((){
          return IndexedStack(
            index: _homeController.currentIndex.value,
            children: [
              Center(child: Text('Screen 1')),
              Center(child: Text('Screen 2')),
              Center(child: Text('Screen 3')),
              Center(child: Text('Screen 4')),
            ],
          );
        }),
      ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(width * 0.02),
          height: width * 0.190, // use width for perfect size
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              return InkWell(
                onTap: () {
                  _homeController.updateIndex(index);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.fastLinearToSlowEaseIn,
                        width: 80.w,
                        height: index == _homeController.currentIndex.value ?4.h : 0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDBCC93),
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                        ),
                      );
                    }),
                    HeightGap(height: 10),
                    Obx(() {
                      return SvgPicture.asset(
                        listOfIcons[index],
                        height: 20.h,
                        width: 20.w,
                        color: index == _homeController.currentIndex.value
                            ? Color(0xFFDBDBDB)
                            : Color(0xFF585858),
                      );
                    }),
                    HeightGap(height: 8),
                    Obx(() {
                      return Text(
                        listOfLabels[index],
                        style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w600,
                          color: index == _homeController.currentIndex.value
                              ? Color(0xFFDBDBDB)
                              : Color(0xFF585858),
                        ),
                      );
                    }),
                  ],
                ),
              );
            }),
          ),
        )
    );
  }

  List<String> listOfIcons = [
    AppImages.homeSvg,
    AppImages.bookingSvg,
    AppImages.chatSvg,
    AppImages.profileSvg,
  ];

  List<String> listOfLabels = [
    "Home",
    "Booking",
    "Chat",
    "Profile",
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/StaticString/static_string.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class SecurityPersonnelManagement extends StatelessWidget {
  const SecurityPersonnelManagement({super.key});

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
          child: Column(
            children: [
              HeightGap(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back_ios_sharp,
                          size: 20, color: AppColors.appGrayColor)),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          maxLines: 2,
                          "Security personnel\n management",
                          style: TextStyles.regular24.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.textGreyColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              HeightGap(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  AppString.securityPersonnelManagement,
                  style: TextStyles.regular12
                      .copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              HeightGap(height: 32),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.all(16),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return BespokeCartWidget(
                      image: "https://cdn.pixabay.com/photo/2022/07/22/19/34/car-7338818_1280.jpg",
                      name: "Ethan Micheal",
                      carModel: "Ferrari 365",
                      onTap: (){
                        Get.toNamed(AppRoute.securityPersonnelDetails);
                      },
                    );
                  },
                  separatorBuilder: (_, __) {
                    return HeightGap(height: 10);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BespokeCartWidget extends StatelessWidget {
  final String image;
  final String name;
  final String carModel;
  final VoidCallback onTap;

  const BespokeCartWidget({
    super.key,
    required this.image,
    required this.name,
    required this.carModel,
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
                image: NetworkImage(image),
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
                  Colors.black26,
                  Colors.black26,
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
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("https://img.freepik.com/free-photo/young-man-with-beard-round-glasses_273609-5845.jpg"),
                ),
                WidthGap(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyles.regular16.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textGreyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Car Model: ",
                          style: TextStyles.regular16.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textGreyColor,
                          ),
                        ),
                        Text(
                          carModel,
                          style: TextStyles.regular16.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 16.h,
              right: 12.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFF8B13D),
                    size: 14,
                  ),
                  WidthGap(width: 3),
                  Text(
                    '4.5',
                    style: TextStyles.regular12
                        .copyWith(fontWeight: FontWeight.w500),
                  )
                ],
              )),
        ],
      ),
    );
  }
}


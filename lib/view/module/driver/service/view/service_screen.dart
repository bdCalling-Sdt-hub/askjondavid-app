import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/app_bar_without_button.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class DriverService extends StatelessWidget {
  const DriverService({super.key});

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
              AppBarWithoutButton(text: 'Services'),
              HeightGap(height: 27.h),
              // Add service button
              _addServiceButton(),
              HeightGap(height: 16),
              Expanded(
                child: Column(
                  children: [
                    HeightGap(height: 20),
                    // luxury car text
                    _luxuryCarText(),
                    HeightGap(height: 8),
                    // services
                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.all(16),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return DriverServices(
                            image: "https://cdn.pixabay.com/photo/2022/07/22/19/34/car-7338818_1280.jpg",
                            name: "Ethan Micheal",
                            carModel: "Ferrari 365",
                          );
                        },
                        separatorBuilder: (_, __) {
                          return HeightGap(height: 10);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // luxury car text
  Align _luxuryCarText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          'Luxury car',
          style: TextStyles.regular16
              .copyWith(fontWeight: FontWeight.w600, color: Color(0xFFC7BA86)),
        ),
      ),
    );
  }

  // add service button
  Align _addServiceButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: GestureDetector(
          onTap: (){
            Get.toNamed(AppRoute.addService);
          },
          child: Container(
            height: 40.h,
            width: 160.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                  image: AssetImage(AppImages.buttonBg), fit: BoxFit.cover),
            ),
            child: Center(
              child: Text('+ Add service', style: TextStyles.regular20.copyWith(
                fontWeight: FontWeight.w600,
                color: Color(0xFF121212)
              ),),
            ),
          ),
        ),
      ),
    );
  }
}

class DriverServices extends StatelessWidget {
  final String image;
  final String name;
  final String carModel;

  const DriverServices({
    super.key,
    required this.image,
    required this.name,
    required this.carModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        // rating
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
    );
  }
}


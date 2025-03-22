import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/StaticString/static_string.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class ReliableTransportation extends StatelessWidget {
  const ReliableTransportation({super.key});

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
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back_ios_sharp,
                          size: 20, color: AppColors.appGrayColor)),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Reliable Transportation",
                        style: TextStyles.regular24.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textGreyColor),
                      ),
                    ),
                  ),
                ],
              ),
              HeightGap(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        HeightGap(height: 8),
                        BespokeServiceDetailsCartWidget(
                          image: "https://cdn.pixabay.com/photo/2022/07/22/19/34/car-7338818_1280.jpg",
                        ),
                        HeightGap(height: 20),
                        Row(
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
                                  "Micheaal",
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
                                      "Ferrari 364",
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
                        HeightGap(height: 16.h),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Text(AppString.reliableTransportation, style: TextStyles.regular16.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFABABAB)
                            ),),
                          ),
                        ),
                        HeightGap(height: 38),
                        Container(
                          height: 52.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Color(0xFF18181A)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                SvgPictureWidget(
                                  imageUrl: AppImages.bookingAssistant,
                                  height: 18.h,
                                  width: 15.w,
                                ),
                                WidthGap(width: 8),
                                Text(
                                  "Booking your assistant number",
                                  style: TextStyles.regular16.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textGreyColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomButton(text: "Register Now", onTap:(){}),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BespokeServiceDetailsCartWidget extends StatelessWidget {
  final String image;
  const BespokeServiceDetailsCartWidget({
    super.key,
    required this.image,

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
        Positioned(
            bottom: 16.h,
            right: 12.w,
            child: Text('\$2700.000',style: TextStyles.regular16.copyWith(
              color: AppColors.textGreyColor,
            ),)),
      ],
    );
  }
}


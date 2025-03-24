import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/StaticString/static_string.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/common/auth/controller/auth_controller.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class BespokeServiceScreen extends StatelessWidget {
  const BespokeServiceScreen({super.key});

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
              CustomAppBar(onTap: (){Get.back();}, title: "Bespoke service",),
              HeightGap(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppString.bespokeDescription,
                              style: TextStyles.regular12
                                  .copyWith(fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify,
                            ),
                            HeightGap(height: 20),
                            Text(
                              'Luxury car',
                              style: TextStyles.regular16.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFC7BA86)),
                            ),
                          ],
                        ),
                      ),
                      HeightGap(height: 8),
                      SizedBox(
                        height: 400.h,
                        child: ListView.separated(
                          padding: EdgeInsets.all(16),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return BespokeCartWidget(
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
                      HeightGap(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
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
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.04),


                      /// Next Button
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                            child: CustomButton(text: "Next", onTap:(){
                              Get.toNamed(AppRoute.bespokeServiceDetailsScreen);
                            })),
                      ),
                    ],
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

class BespokeCartWidget extends StatelessWidget {
  final String image;
  final String name;
  final String carModel;

  const BespokeCartWidget({
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
        Positioned(
            bottom: 16.h,
            right: 12.w,
            child: Obx(
              () {
                final authController = Get.find<AuthController>();
                return GestureDetector(
                  onTap: () {
                    authController.toggleCheckbox();
                  },
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xFFC7BA86), width: 1.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: authController.isChecked.value
                            ? Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFC7BA86)),
                              )
                            : null,
                      )),
                );
              },
            )),
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


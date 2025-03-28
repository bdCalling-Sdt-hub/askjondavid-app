// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
// import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
// import 'package:luxury_car_service/Utils/Texts/text_style.dart';
// import 'package:luxury_car_service/core/app_route/app_route.dart';
// import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
// import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
//
// class PackagesScreen extends StatelessWidget {
//   const PackagesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage(AppImages.backgroundImage),
//                   fit: BoxFit.cover)),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 HeightGap(height: 24),
//                 _appBar(),
//                 HeightGap(height: 70.h),
//                 SizedBox(
//                   height: 550.h,
//                   child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 4,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.r),
//                             border: Border.all(
//                                 color: Color(0xFFE7DDB7)
//                             )
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 18.0),
//                           child: Column(
//                             children: [
//                               Align(
//                                 alignment: Alignment.center,
//                                 child: Text(
//                                   'Tier 1: Personal Driver & \nConcierge Service',
//                                   style: TextStyles.regular16.copyWith(
//                                       fontWeight: FontWeight.w500,
//                                       color: AppColors.appGrayColor),
//                                 ),
//                               ),
//                               HeightGap(height: 24),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "\$2,999",
//                                     style: TextStyles.regular32.copyWith(
//                                         fontWeight: FontWeight.w600,
//                                         color: Color(0xFFDBCC93)),
//                                   ),
//                                   Text(
//                                     "/monthly",
//                                     style: TextStyles.regular16.copyWith(
//                                         fontWeight: FontWeight.w500,
//                                         color: AppColors.appGrayColor),
//                                   ),
//                                 ],
//                               ),
//                               HeightGap(height: 40.h),
//                               // Inclusion
//                               _inclusion(),
//                               // Benefit
//                               HeightGap(height: 20),
//                               _benefit(),
//                               HeightGap(height: 40.h),
//                               // Button
//                               GestureDetector(
//                                 onTap: (){
//                                   Get.toNamed(AppRoute.landingScreen);
//                                 },
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                                   child: Container(
//                                     height: 44.h,
//                                     width: 200.w,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(12.r),
//                                       image: DecorationImage(image: AssetImage(
//                                         AppImages.buttonBg),
//                                         fit: BoxFit.cover
//                                       )
//                                     ),
//                                     child: Center(
//                                       child: Text('Buy Now', style: TextStyles.regular20.copyWith(
//                                         fontWeight: FontWeight.w600,
//                                         color: Color(0xFF101010)
//                                       ),),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                     separatorBuilder: (__, _) {
//                       return WidthGap(width: 10.w);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Inclusion
//   Padding _inclusion() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 36.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               SvgPictureWidget(
//                 imageUrl: AppImages.inclusion ?? '', // Default value for imageUrl
//                 height: 18.h,
//                 width: 18.w,
//               ),
//               WidthGap(width: 6.h),
//               Text(
//                 "Inclusions:",
//                 style: TextStyles.regular16.copyWith(
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFFB8B8B8),
//                 ),
//               ),
//             ],
//           ),
//           HeightGap(height: 12.h),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '20 hours of service per month',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                   HeightGap(height: 8),
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '20 hours of service per month',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                   HeightGap(height: 8),
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '20 hours of service per month',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                   HeightGap(height: 8),
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '20 hours of service per month',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               )
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Benefit
//   Padding _benefit() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 36.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               SvgPictureWidget(
//                 imageUrl: AppImages.benifit ?? '', // Default value for imageUrl
//                 height: 18.h,
//                 width: 18.w,
//               ),
//               WidthGap(width: 6.h),
//               Text(
//                 "Benefits:",
//                 style: TextStyles.regular16.copyWith(
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFFB8B8B8),
//                 ),
//               ),
//             ],
//           ),
//           HeightGap(height: 12.h),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '24/7 availability for scheduling',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                   HeightGap(height: 8),
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '24/7 availability for scheduling',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                   HeightGap(height: 8),
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '24/7 availability for scheduling',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//                   HeightGap(height: 8),
//                   Row(
//                     children: [
//                       Container(
//                         height: 6.h,
//                         width: 6.w,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFFb8b8b8),
//                         ),
//                       ),
//                       WidthGap(width: 10),
//                       Text(
//                         '24/7 availability for scheduling',
//                         style: TextStyles.regular12.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xFFB8B8B8),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                 ],
//               )
//           ),
//         ],
//       ),
//     );
//   }
//
//   // appBar
//   Center _appBar() {
//     return Center(
//       child: Text(
//         'Subscriptions',
//         style: TextStyles.regular24.copyWith(
//           fontWeight: FontWeight.w500,
//           color: AppColors.appGrayColor,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeightGap(height: 24),
                    _appBar(),
                    HeightGap(height: 40.h),
                    SizedBox(
                      height: 620.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width*0.80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(
                                    color: Color(0xFFE7DDB7)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Tier 1: Personal Driver & \nConcierge Service',
                                      style: TextStyles.regular16.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.appGrayColor),
                                    ),
                                  ),
                                  HeightGap(height: 14),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$2,999",
                                        style: TextStyles.regular32.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFDBCC93)),
                                      ),
                                      Text(
                                        "/monthly",
                                        style: TextStyles.regular16.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.appGrayColor),
                                      ),
                                    ],
                                  ),
                                  HeightGap(height: 20.h),
                                  // Inclusion
                                  // _inclusion(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                    child: Row(
                                      children: [
                                        SvgPictureWidget(
                                          imageUrl: AppImages.inclusion ?? '', // Default value for imageUrl
                                          height: 18.h,
                                          width: 18.w,
                                        ),
                                        WidthGap(width: 6.h),
                                        Text(
                                          "Inclusions:",
                                          style: TextStyles.regular16.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFB8B8B8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  HeightGap(height: 12.h),
                                  // Inclusion
                                  SizedBox(
                                    height: 140.h,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                                      child: ListView.separated(
                                        itemCount: 6,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                width: 6.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Color(0xFFb8b8b8),
                                                ),
                                              ),
                                              WidthGap(width: 10),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width*0.48,
                                                child: Text(
                                                  '20 hours of service per month',
                                                  style: TextStyles.regular12.copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFB8B8B8),
                                                    overflow: TextOverflow.fade
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                        separatorBuilder: (__,_){
                                          return HeightGap(height: 8.w);
                                        },
                                      ),
                                    ),
                                  ),

                                  // Benefit
                                  HeightGap(height: 20),
                                  // _benefit(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                    child: Row(
                                      children: [
                                        SvgPictureWidget(
                                          imageUrl: AppImages.benifit ?? '',
                                          height: 18.h,
                                          width: 18.w,
                                        ),
                                        WidthGap(width: 6.h),
                                        Text(
                                          "Benefits:",
                                          style: TextStyles.regular16.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFB8B8B8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  HeightGap(height: 12.h),

                                  // Benefit
                                  SizedBox(
                                    height: 140.h,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                                      child: ListView.separated(
                                        itemCount: 6,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                width: 6.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Color(0xFFb8b8b8),
                                                ),
                                              ),
                                              WidthGap(width: 10),
                                              SizedBox(
                                                width: MediaQuery.of(context).size.width*0.48,
                                                child: Text(
                                                  '24/7 availability for scheduling',
                                                  style: TextStyles.regular12.copyWith(
                                                      fontWeight: FontWeight.w400,
                                                      color: Color(0xFFB8B8B8),
                                                      overflow: TextOverflow.fade
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                        separatorBuilder: (__,_){
                                          return HeightGap(height: 8.w);
                                        },
                                      ),
                                    ),
                                  ),
                                  HeightGap(height: 20.h),
                                  // Button
                                  GestureDetector(
                                    onTap: (){
                                      Get.toNamed(AppRoute.landingScreen);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                      child: Container(
                                        height: 44.h,
                                        width: 200.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12.r),
                                            image: DecorationImage(image: AssetImage(
                                                AppImages.buttonBg),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                        child: Center(
                                          child: Text('Buy Now', style: TextStyles.regular20.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF101010)
                                          ),),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (__, _) {
                          return WidthGap(width: 10.w);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Inclusion
  Padding _inclusion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPictureWidget(
                imageUrl: AppImages.inclusion ?? '', // Default value for imageUrl
                height: 18.h,
                width: 18.w,
              ),
              WidthGap(width: 6.h),
              Text(
                "Inclusions:",
                style: TextStyles.regular16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFB8B8B8),
                ),
              ),
            ],
          ),
          HeightGap(height: 12.h),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '20 hours of service per month',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                  HeightGap(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '20 hours of service per month',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                  HeightGap(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '20 hours of service per month',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                  HeightGap(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '20 hours of service per month',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

  // Benefit
  Padding _benefit() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPictureWidget(
                imageUrl: AppImages.benifit ?? '', // Default value for imageUrl
                height: 18.h,
                width: 18.w,
              ),
              WidthGap(width: 6.h),
              Text(
                "Benefits:",
                style: TextStyles.regular16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFB8B8B8),
                ),
              ),
            ],
          ),
          HeightGap(height: 12.h),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '24/7 availability for scheduling',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                  HeightGap(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '24/7 availability for scheduling',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                  HeightGap(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '24/7 availability for scheduling',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),
                  HeightGap(height: 8),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFb8b8b8),
                        ),
                      ),
                      WidthGap(width: 10),
                      Text(
                        '24/7 availability for scheduling',
                        style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFB8B8B8),
                        ),
                      ),
                    ],
                  ),

                ],
              )
          ),
        ],
      ),
    );
  }

  // appBar
  Center _appBar() {
    return Center(
      child: Text(
        'Subscriptions',
        style: TextStyles.regular24.copyWith(
          fontWeight: FontWeight.w500,
          color: AppColors.appGrayColor,
        ),
      ),
    );
  }
}

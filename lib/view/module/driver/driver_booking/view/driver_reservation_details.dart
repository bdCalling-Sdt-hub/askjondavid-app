import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class ReservationDetails extends StatelessWidget {
  const ReservationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bool? fromPendingScreen = Get.arguments?['pending'];

    return Scaffold(
        backgroundColor: AppColors.appBg,
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.backgroundImage),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(onTap: (){Get.back();}, title: "Reservation Details",),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 28.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order id: #10kkj', style: TextStyles.title20.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFC7BA86),
                        ),),
                        HeightGap(height: 16.h),
                        // Personal Information
                        Text("Personal Information", style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFABABAB)
                        ),),
                        HeightGap(height: 16.h),
                        // full name
                        _reservationDetails(context, "Full Name", "Daniel Christopher Walker"),
                        HeightGap(height: 12.h),
                        _reservationDetails(context, "Email", "james@gmail.com"),
                        HeightGap(height: 12.h),
                        _reservationDetails(context, "Address", "2972 Westheimer Rd."),


                        // Car information
                        HeightGap(height: 28.h),
                        Text("Car Information", style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFABABAB)
                        ),),
                        HeightGap(height: 16.h),
                        _reservationDetails(context, "Brand", "Land Rover"),
                        HeightGap(height: 12.h),
                        _reservationDetails(context, "Price", "2972 Westheimer Rd."),


                        // Reservation Information
                        HeightGap(height: 28.h),
                        Text("Reservation Information", style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFABABAB)
                        ),),
                        HeightGap(height: 16.h),
                        _reservationDetails(context, "Check in date", "08/12/2024"),
                        HeightGap(height: 12.h),
                        _reservationDetails(context, "Check out date", "26/12/2024"),

                        // Total amount
                        HeightGap(height: 28.h),
                        _reservationDetails(context, "Total Amount", "\$715.89"),
                        HeightGap(height: 60.h),
                        if(fromPendingScreen==true)Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 52.h,
                              width: MediaQuery.of(context).size.width/2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: Color(0xFFFC6057),
                                ),
                              ),
                              child: Center(
                                child: Text('Reject', style: TextStyles.regular20.copyWith(
                                  color: Color(0xFFFC6057),
                                  fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  image: DecorationImage(
                                    image: AssetImage(AppImages.buttonBg),
                                    fit: BoxFit.cover
                                  )
                                ),
                                height: 52.h,
                                width: MediaQuery.of(context).size.width/2.5,
                                child: Center(
                                  child: Text('Accept', style: TextStyles.regular20.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF121212)
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Column _reservationDetails(BuildContext context, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/3.4,
              child: Text(label, style: TextStyles.regular15.copyWith(
                  color: Color(0xFF929292)
              )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.6,
              child: Text(":  $value", style: TextStyles.regular16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFABABAB)
              ),),

            ),
          ],
        ),
      ],
    );
  }

}
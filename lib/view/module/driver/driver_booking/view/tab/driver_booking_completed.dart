import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/driver/driver_booking/driver_booking_widget/driver_booking_cart_widget.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class DriverBookingCompleted extends StatelessWidget {
  const DriverBookingCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    final String? receivedEmail =  Get.arguments?['pending'];
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: ListView.separated(
        itemCount: 4,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Get.toNamed(AppRoute.reservationDetails);
            },
            child: DriverBookingCartWidget(
              imgUrl: "https://www.shutterstock.com/image-photo/smiling-african-american-millennial-businessman-600nw-1437938108.jpg",
              name: "Daniel Christopher Walker",
              orderId:"1486j",
              rent: "440.75",
              carName: "Land Rover",
              date: "Aug 20, 2023",
              time: "09 : 00 AM",
              location: "Westheimer Rd",
            ),
          );
        },
        separatorBuilder: (__,_){
          return HeightGap(height: 12);
        },
      ),
    );
  }
}

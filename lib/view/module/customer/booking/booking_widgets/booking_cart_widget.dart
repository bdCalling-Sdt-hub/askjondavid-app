import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/booking/booking_widgets/custom_vertical_divider.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class BookingCartWidget extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String orderId;
  final String rent;
  final String carName;
  final String date;
  final String time;
  final String location;
  const BookingCartWidget({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.orderId,
    required this.rent,
    required this.carName,
    required this.date,
    required this.time,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF18181A),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 44.r,
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  WidthGap(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFABABAB)
                      )),
                      HeightGap(height: 5),
                      Text('Order id: #${orderId}', style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF929292)
                      ),),
                      HeightGap(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price: ',style: TextStyles.regular16.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF757575)
                          ),),
                          Text('\$ $rent', style: TextStyles.regular16.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.appGrayColor
                          ),),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              HeightGap(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Car Icon and Text
                    SvgPictureWidget(imageUrl: AppImages.car, height: 12, width: 12),
                    WidthGap(width: 4),
                    Text(
                      carName,
                      style: TextStyles.regular12.copyWith(
                          color: AppColors.appGrayColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    WidthGap(width: 6),
                    CustomVerticalDivider(),
                    WidthGap(width: 6),

                    // Calender
                    SvgPictureWidget(imageUrl: AppImages.calendar, height: 12, width: 12),
                    WidthGap(width: 4),
                    Text(
                      date,
                      style: TextStyles.regular12.copyWith(
                          color: AppColors.appGrayColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    WidthGap(width: 6),
                    CustomVerticalDivider(),
                    WidthGap(width: 6),

                    // Clock
                    SvgPictureWidget(imageUrl: AppImages.clock, height: 12, width: 12),
                    WidthGap(width: 4),
                    Text(
                      time,
                      style: TextStyles.regular12.copyWith(
                          color: AppColors.appGrayColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    WidthGap(width: 6),
                    CustomVerticalDivider(),
                    WidthGap(width: 6),

                    // location
                    SvgPictureWidget(imageUrl: AppImages.location, height: 12, width: 12),
                    WidthGap(width: 4),
                    Text(
                      location,
                      style: TextStyles.regular12.copyWith(
                          color: AppColors.appGrayColor,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    WidthGap(width: 6),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

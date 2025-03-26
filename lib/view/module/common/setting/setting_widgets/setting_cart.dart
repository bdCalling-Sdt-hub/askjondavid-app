import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class SettingCart extends StatelessWidget {
  final String svgIcon;
  final String text;
  final VoidCallback onTap;
  const SettingCart({
    super.key,
    required this.svgIcon,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52.h,
        decoration: BoxDecoration(
            color: Color(0xFF18181A),
            // color: Colors.red,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPictureWidget(imageUrl: svgIcon, height: 16, width: 16,),
                  WidthGap(width: 8.w),
                  Text(text,style: TextStyles.regular16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFDBDBDB)
                  ),),
                ],
              ),
              Icon(Icons.navigate_next_rounded,size: 16, color: Color(0xFFDBDBDB),)
            ],
          ),
        ),
      ),
    );
  }
}

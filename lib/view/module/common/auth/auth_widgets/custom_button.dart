import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(AppImages.buttonBg), fit: BoxFit.fitWidth)
        ),
        child: Center(
          child: Text(text, style: TextStyles.regular16.copyWith(
              color: Color(0xFF101010),
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}

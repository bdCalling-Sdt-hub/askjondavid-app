import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';

class TextStyles {
  static TextStyle title32 = GoogleFonts.nunito(
      fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.white50);
  static final title48 = title32.copyWith(fontSize: 48.sp);
  static final title30 = title32.copyWith(fontSize: 30.sp);
  static final title28 = title32.copyWith(fontSize: 28.sp);
  static final title26 = title32.copyWith(fontSize: 26.sp);
  static final title24 = title32.copyWith(fontSize: 24.sp);
  static final title22 = title32.copyWith(fontSize: 22.sp);
  static final title20 = title32.copyWith(fontSize: 20.sp);
  static final title18 = title32.copyWith(fontSize: 18.sp);
  static final title16 = title32.copyWith(fontSize: 16.sp);
  static final title14 = title32.copyWith(fontSize: 14.sp);
  static final title12 = title32.copyWith(fontSize: 12.sp);
  static final title11 = title32.copyWith(fontSize: 11.sp);

  static TextStyle regular16 = GoogleFonts.nunito(
      fontSize: 16, color: AppColors.white50, fontWeight: FontWeight.normal);
  static TextStyle regular16Thin100 = GoogleFonts.nunito(
      fontSize: 16, color: AppColors.white50, fontWeight: FontWeight.w100);
  static TextStyle regular16Thin200 = GoogleFonts.nunito(
      fontSize: 16, color: AppColors.white50, fontWeight: FontWeight.w200);
  static TextStyle regular16Thin300 = GoogleFonts.nunito(
      fontSize: 16, color: AppColors.white50, fontWeight: FontWeight.w300);
  static TextStyle regular16Thin400 = GoogleFonts.nunito(
      fontSize: 16, color: AppColors.white50, fontWeight: FontWeight.w400);

  static final regular28 = regular16.copyWith(fontSize: 28.sp);
  static final regular24 = regular16.copyWith(fontSize: 24.sp);
  static final regular22 = regular16.copyWith(fontSize: 22.sp);
  static final regular20 = regular16.copyWith(fontSize: 20.sp);
  static final regular18 = regular16.copyWith(fontSize: 18.sp);
  static final regular17 = regular16.copyWith(fontSize: 17.sp);
  static final regular15 = regular16.copyWith(fontSize: 16.sp);
  static final regular14 = regular16.copyWith(fontSize: 14.sp);
  static final regular12 = regular16.copyWith(fontSize: 12.sp);
  static final regular11 = regular16.copyWith(fontSize: 11.sp);
  static final regular10 = regular16.copyWith(fontSize: 10.sp);
  static final regular8 = regular16.copyWith(fontSize: 8.sp);
  static final regular9 = regular16.copyWith(fontSize: 9.5.sp);
}
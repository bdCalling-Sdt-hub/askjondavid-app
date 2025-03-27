import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';

class CustomTextFromField extends StatelessWidget {
  final String? hintText;
  final int? maxLine;
  final bool? readonly;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final bool? hasObsecureText;
  final Widget? obsecureTextSuffixIcon;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final bool? reduceHeight;
  final bool? isClickAble;
  final bool? obSecureText;
  final double? height;
  final bool? hasFiilColor;
  final bool isEmail;
  final String? Function(String?)? validator;

  const  CustomTextFromField({
    super.key,
    required this.hintText,
    this.maxLine,
    this.readonly,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.onTap,
    this.onChanged,
    this.reduceHeight,
    this.isClickAble,
    this.hasObsecureText,
    this.obSecureText,
    this.obsecureTextSuffixIcon,
    this.height,
    this.validator,
    this.hasFiilColor,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(0.r),
          // height: 52.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFF18181A)
          ),
          child: TextFormField(
            style: TextStyles.regular16,
            obscureText: obSecureText ?? false,
            onChanged: onChanged,
            controller: controller,
            maxLines: maxLine ?? 1,
            readOnly: readonly ?? false,
            validator: validator,
            decoration: buildInputDecoration(),
            cursorColor: AppColors.white800,
          ),
        ),
        SizedBox(height: 0),
      ],
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      suffixIcon: hasObsecureText == true
          ? obsecureTextSuffixIcon
          : suffixIcon != null
          ? Icon(suffixIcon, color: AppColors.white700)
          : null,
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: Color(0xFFB8B8B8), size: 16,)
          : null,
      hintText: hintText,
      hintStyle: TextStyles.regular16.copyWith(
        color: Color(0xffB8B8B8),
        fontWeight: FontWeight.w400,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(0.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(0.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(0.0),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
    );
  }

}

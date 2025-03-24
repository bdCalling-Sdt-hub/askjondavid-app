import 'package:flutter/material.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomAppBar({
    super.key,
    required this.onTap,
    required this. title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: onTap,
            icon: Icon(Icons.arrow_back_ios_sharp,
                size: 20, color: AppColors.appGrayColor)),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Text(
                title,
                style: TextStyles.regular24.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textGreyColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

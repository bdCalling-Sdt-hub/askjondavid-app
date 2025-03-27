import 'package:flutter/material.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';

class AppBarWithoutButton extends StatelessWidget {
  final String text;
  const AppBarWithoutButton({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, style: TextStyles.regular24.copyWith(
        fontWeight: FontWeight.w500,
        color: Color(0xFFDBDBDB)
    ),));
  }
}

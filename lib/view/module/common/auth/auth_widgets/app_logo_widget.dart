import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  const AppLogoWidget({
    super.key,
    required this.imagePath,
    this.height=100,
    this.width=100
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}

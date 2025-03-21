import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPictureWidget extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  const SvgPictureWidget({super.key, required this.imageUrl, this.height=100, this.width=100});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imageUrl,
      height: height.h,
      width: width.w,
    );
  }
}

import 'package:flutter/material.dart';

class HeightGap extends StatelessWidget {
  final double height;
  const HeightGap({
    super.key,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
class WidthGap extends StatelessWidget {
  final double width;
  const WidthGap({
    super.key,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

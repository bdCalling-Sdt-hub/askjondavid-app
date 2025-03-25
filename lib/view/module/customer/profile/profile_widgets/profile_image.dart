import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container profileImage() {
  return Container(
    height: 190.h,
    width: 190.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xFF212220),
    ),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 190.h,
        width: 190.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
              image: NetworkImage(
                  "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
              fit: BoxFit.cover),
        ),
      ),
    ),
  );
}

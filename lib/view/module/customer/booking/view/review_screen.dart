import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImage),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar(onTap: (){
                Get.back();
              }, title: "Review"),
              HeightGap(height: 30.h),
              Text('Your overall right of this product',style: TextStyles.regular16.copyWith(
                fontWeight: FontWeight.w600,
                color: Color(0xFF606060)
              )),
              HeightGap(height: 16),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              HeightGap(height: 40.h),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Add detailed review", style: TextStyles.regular16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF606060)
                  ),),
                ),
              ),
              HeightGap(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: TextField(
                    cursorColor: Color(0xFF858585),
                    maxLines: 4,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter here...',
                      hintStyle: TextStyles.regular12.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF858585)
                      ),
                      border: InputBorder.none, // No border
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

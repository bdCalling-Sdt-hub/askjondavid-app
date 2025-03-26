import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImage),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              HeightGap(height: 10.h),
              CustomAppBar(onTap: (){
                Get.back();
              }, title: "Payment"),
              HeightGap(height: 30.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('User payment', style: TextStyles.regular16.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFABABAB)
                            ),),
                            Text('\$100', style: TextStyles.regular16.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFABABAB)
                            ),),
                          ],
                        ),
                        HeightGap(height: 12),
                        Divider(
                          height: 0.3,
                          color: Color(0xFF414141),
                        ),
                        HeightGap(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Payment', style: TextStyles.regular16.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFABABAB)
                            ),),
                            Text('\$100', style: TextStyles.regular20.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFDBCC93)
                            ),),
                          ],
                        ),
                        HeightGap(height: 28.h),
                        Text('Card Holder Name', style: TextStyles.regular16.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF757575)
                        ),),
                        HeightGap(height: 8.h),
                        CustomTextFromField(hintText: 'Enter your name'),
                        HeightGap(height: 16.h),
                        Text('Card Number', style: TextStyles.regular16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF757575)
                        ),),
                        HeightGap(height: 8.h),
                        CustomTextFromField(hintText: 'Enter Card Number'),
                        HeightGap(height: 16.h),
                        Row(
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Expiry Date', style: TextStyles.regular16.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF757575)
                                  ),),
                                  HeightGap(height: 8.h),
                                  CustomTextFromField(hintText: 'Enter date'),
                                ],
                              ),
                            ),
                            WidthGap(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('CVV', style: TextStyles.regular16.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF757575)
                                  ),),
                                  HeightGap(height: 8.h),
                                  CustomTextFromField(
                                    hintText: 'Write CVV',
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        HeightGap(height: 16.h),
                        Text('Amount', style: TextStyles.regular16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF757575)
                        ),),
                        HeightGap(height: 8.h),
                        CustomTextFromField(hintText: '\$ Enter Amount'),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 24),
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(AppRoute.paymentSuccessful);
                            },
                            child: Container(
                              height: 52.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                image: DecorationImage(
                                    image: AssetImage(AppImages.buttonBg),
                                    fit: BoxFit.cover),
                              ),
                              child: Center(
                                child: Text(
                                  'Pay',
                                  style: TextStyles.regular20.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF101010)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

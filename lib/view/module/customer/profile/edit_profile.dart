import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.backgroundImage),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              HeightGap(height: 20.h),
              // Custom AppBar fixed at the top
              CustomAppBar(
                  onTap: () {
                    Get.back();
                  },
                  title: "Personal Information"),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HeightGap(height: 23),
                      // profile image
                      _profileImage(),
                      HeightGap(height: 72.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomTextFromField(
                          hintText: 'Enter your email',
                          prefixIcon: Icons.email_outlined,
                        ),
                      ),
                      HeightGap(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomTextFromField(
                          hintText: 'Enter your Location',
                          prefixIcon: Icons.location_on_outlined,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 24),
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
                              'Save & Change',
                              style: TextStyles.regular20.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF101010)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // edit profile
  _profileImage() {
    return Stack(
      children: [
        Container(
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
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: SvgPictureWidget(
            imageUrl: AppImages.profileEdit,
            height: 30,
            width: 30,
          ),
        )
      ],
    );
  }
}

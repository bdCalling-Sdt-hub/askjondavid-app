import 'dart:io';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/module/driver/service/controller/service_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class AddServiceScreen extends StatelessWidget {
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final serviceController = Get.find<ServiceController>();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              HeightGap(height: 10),
              // AppBar icon
              _appBar(),
              HeightGap(height: 30.h),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextFromField(hintText: 'Enter service name'),
                        HeightGap(height: 16.h),
                        _selectDropDown(serviceController),
                        HeightGap(height: 16.h),
                        CustomTextFromField(hintText: 'Enter service price'),
                        HeightGap(height: 20.h),
                        _selectImage(serviceController),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: CustomButton(text: 'Upload', onTap: (){
                  Get.toNamed(AppRoute.documentUpload);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  // drop down
  Obx _selectDropDown(ServiceController serviceController) {
    return Obx(() {
      return Container(
        height: 52.h,
        child: DropdownButtonFormField<String>(
          hint: Text('Select service category', style: TextStyles.regular16.copyWith(
            color: Color(0xffB8B8B8),
            fontWeight: FontWeight.w400,
          )),
          value: serviceController.selectedValue.value.isEmpty
              ? null
              : serviceController.selectedValue.value,
          items: serviceController.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(color: AppColors.appGrayColor),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              serviceController.updateSelectedValue(newValue);
            }
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF18181A),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          ),
          dropdownColor: Colors.black.withOpacity(0.8),
          style: TextStyle(color: Colors.white),
          icon: Icon(Icons.arrow_drop_down, color: AppColors.appGrayColor),
        ),
      );
    });
  }

  // select image
  Obx _selectImage(ServiceController serviceController) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(2.0),
        child: GestureDetector(
          onTap: () {
            serviceController.pickImageFromCamera();
          },
          child: Container(
            height: 117.h,
            width: double.infinity,
            decoration: DottedDecoration(
                shape: Shape.box, borderRadius: BorderRadius.circular(8.r)),
            child: Center(
              child: serviceController.selectedImagePath.value.isEmpty
                  ? SvgPictureWidget(
                      imageUrl: AppImages.imageSvg,
                      height: 32.h,
                      width: 32.w,
                    )
                  : Image.file(File(serviceController.selectedImagePath.value),
                      fit: BoxFit.fitWidth),
            ),
          ),
        ),
      ),
    );
  }

  // appBar
  Align _appBar() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back_ios_sharp,
            size: 20, color: AppColors.appGrayColor),
      ),
    );
  }
}

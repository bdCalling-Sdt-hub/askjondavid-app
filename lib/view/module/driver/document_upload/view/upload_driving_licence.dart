import 'dart:io';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/StaticString/static_string.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/module/driver/service/controller/service_controller.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class UploadDrivingLicence extends StatelessWidget {
  const UploadDrivingLicence({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appBar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeightGap(height: 10),
                      // AppBar
                      HeightGap(height: 20.h),
                      Text('Take a photo of your driving licence', style: TextStyles.regular24.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.appGrayColor
                      ),),
                      HeightGap(height: 8.h),
                      Text("Please make sure we can read all of the details easily", style: TextStyles.regular12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF858585)
                      ),),
                      HeightGap(height: 20.h),
                      _selectImage(serviceController, context),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
                child: CustomButton(text: "Upload", onTap: (){
                  final serviceController = Get.find<ServiceController>();
                  if(serviceController.selectedDrivingLicenceFrontPart.value.isNotEmpty && serviceController.selectedDrivingLicenceBackPart.value.isNotEmpty){
                    Get.toNamed(AppRoute.documentUpload, arguments: {
                      "licence": true
                    });
                  }
                  else{
                    Get.snackbar("Warning", "Upload both front and back side", colorText: Colors.white, backgroundColor: Colors.redAccent.withOpacity(0.2));
                  }
                }),
              )
            ],
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
  Obx _selectImage(ServiceController serviceController, BuildContext context) {
    return Obx(
          () => Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Id front
            GestureDetector(
              onTap: () {
                serviceController.pickDrivingLicenceFrontPartFromCamera();
              },
              child: Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width/2.3,
                decoration: DottedDecoration(
                    shape: Shape.box, borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: serviceController.selectedDrivingLicenceFrontPart.value.isEmpty
                      ? SvgPictureWidget(
                    imageUrl: AppImages.captureFront,
                    height: 32.h,
                    width: 32.w,
                  )
                      : Image.file(File(serviceController.selectedDrivingLicenceFrontPart.value),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),

            // Id back
            GestureDetector(
              onTap: () {
                serviceController.pickDrivingLicenceBackPartFromCamera();
              },
              child: Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width/2.3,
                decoration: DottedDecoration(
                    shape: Shape.box, borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: serviceController.selectedDrivingLicenceBackPart.value.isEmpty
                      ? SvgPictureWidget(
                    imageUrl: AppImages.captureBack,
                    height: 32.h,
                    width: 32.w,
                  )
                      : Image.file(File(serviceController.selectedDrivingLicenceBackPart.value),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}


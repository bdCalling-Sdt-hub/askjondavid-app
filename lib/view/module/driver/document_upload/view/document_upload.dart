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

class DocumentUpload extends StatefulWidget {
  const DocumentUpload({super.key});

  @override
  State<DocumentUpload> createState() => _DocumentUploadState();
}

class _DocumentUploadState extends State<DocumentUpload> {
  @override
  void initState() {
    // TODO: implement initState
    final serviceController = Get.find<ServiceController>();
    serviceController.updateSelectedDocuments();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final bool? id =  Get.arguments?['id'];
    final bool? licence =  Get.arguments?['licence'];
    final serviceController = Get.find<ServiceController>();

    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.backgroundImage
              ),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // appBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPictureWidget(
                      imageUrl: AppImages.appBarLogoSvg,
                      height: 20,
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.notification);
                      },
                      child: SvgPictureWidget(
                        imageUrl: AppImages.notificationSvg,
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeightGap(height: 16.h),
                      Text('Welcome, Ethan Michael', style: TextStyles.regular24.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.appGrayColor
                      ),),
                      Text('Complete 6 more steps to start earning', style: TextStyles.regular16.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF858585)
                      ),),
                      HeightGap(height: 24.h),
                      // Id card Upload
                      _uploadIDCard(id),
                      HeightGap(height: 20.h),
                      _uploadDrivingLicence(licence),
                      HeightGap(height: 20.h),
                      _uploadVehicleRegistration(),
                      // HeightGap(height: 20.h),
                      // _uploadVehicleFitness(),
                    ],
                  ),
                ),
                Visibility(
                  visible:serviceController.selectedAllDocuments==true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
                    child: CustomButton(text: "Next", onTap: (){
                      Get.toNamed(AppRoute.driverLanding);
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // upload id card
  GestureDetector _uploadIDCard(bool? id) {
    final serviceController = Get.find<ServiceController>();
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.uploadIdCard);
      },
      child: Container(
        height: 52.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF18181A),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ID card',
                  style: TextStyles.regular16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.appGrayColor),
                ),
                if (serviceController.selectedIdCardFrontPath.value.isNotEmpty && serviceController.selectedIdCardBackPath.value.isNotEmpty)
                  SvgPictureWidget(
                    imageUrl: AppImages.clicked,
                    height: 16.h,
                    width: 16.w,
                  ),
                if (serviceController.selectedIdCardFrontPath.value.isEmpty && serviceController.selectedIdCardBackPath.value.isEmpty)
                  Icon(
                    Icons.navigate_next_rounded,
                    color: AppColors.appGrayColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // upload driving licence
  GestureDetector _uploadDrivingLicence(bool? licence) {
    final serviceController = Get.find<ServiceController>();

    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.uploadDrivingLicence);
      },
      child: Container(
        height: 52.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF18181A),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Diving licence',
                  style: TextStyles.regular16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.appGrayColor),
                ),
                if (serviceController.selectedDrivingLicenceFrontPart.value.isNotEmpty && serviceController.selectedDrivingLicenceBackPart.value.isNotEmpty)
                  SvgPictureWidget(
                    imageUrl: AppImages.clicked,
                    height: 16.h,
                    width: 16.w,
                  ),
                if (serviceController.selectedDrivingLicenceFrontPart.value.isEmpty && serviceController.selectedDrivingLicenceBackPart.value.isEmpty)
                  Icon(
                    Icons.navigate_next_rounded,
                    color: AppColors.appGrayColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // vehicle registration
  GestureDetector _uploadVehicleRegistration() {
    final serviceController = Get.find<ServiceController>();

    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.vehicleRegistration);
      },
      child: Container(
        height: 52.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF18181A),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vehicle registration',
                  style: TextStyles.regular16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.appGrayColor),
                ),
                if (serviceController.selectedVehicleRegistrationFrontPart.value.isNotEmpty && serviceController.selectedVehicleRegistrationBackPart.value.isNotEmpty)
                  SvgPictureWidget(
                    imageUrl: AppImages.clicked,
                    height: 16.h,
                    width: 16.w,
                  ),
                if (serviceController.selectedVehicleRegistrationFrontPart.value.isEmpty && serviceController.selectedVehicleRegistrationBackPart.value.isEmpty)
                  Icon(
                    Icons.navigate_next_rounded,
                    color: AppColors.appGrayColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // vehicle fitness
  GestureDetector _uploadVehicleFitness() {
    final serviceController = Get.find<ServiceController>();

    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.vehicleFitness);
      },
      child: Container(
        height: 52.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF18181A),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vehicle fitness certificate',
                  style: TextStyles.regular16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.appGrayColor),
                ),
                if (serviceController.selectedVehicleFitnessFrontPart.value.isNotEmpty && serviceController.selectedVehicleFitnessBackPart.value.isNotEmpty)
                  SvgPictureWidget(
                    imageUrl: AppImages.clicked,
                    height: 16.h,
                    width: 16.w,
                  ),
                if (serviceController.selectedVehicleFitnessFrontPart.value.isEmpty && serviceController.selectedVehicleFitnessBackPart.value.isEmpty)
                  Icon(
                    Icons.navigate_next_rounded,
                    color: AppColors.appGrayColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


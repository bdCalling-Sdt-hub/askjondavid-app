import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/common/onboarding/controller/onboarding_controller.dart';
import 'package:luxury_car_service/view/module/common/onboarding/onboarding_widgets/onbarding_page_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.find<OnboardingController>();
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: (page) {
              onboardingController.currentPage.value = page;
            },
            children: [
              buildPage(
                image: AppImages.onboardingScreeOne,
                title: 'Experience Luxury on the Go',
                description: 'Your personal chauffeur, anytime, anywhere – with tailored services to suit your needs.',
                showButton: true,
                buttonText: 'Next',
                onButtonPressed: onboardingController.nextPage,
              ),
              buildPage(
                image: AppImages.onboardingScreeTwo,
                title: 'Premium Chauffeur Services',
                description: 'Tailored journeys with professional drivers, designed for your comfort and security.',
                showButton: false,
                buttonText: 'Next',
                onButtonPressed: onboardingController.nextPage,
              ),
            ],
          ),
          // Skip button on top right corner
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: onboardingController.skip,
              child: Text(
                'Skip',
                style: TextStyles.regular15.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white50,
                ),
              ),
            ),
          ),
          // Bottom indicator
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(2, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: onboardingController.currentPage.value == index
                        ? 24
                        : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: onboardingController.currentPage.value == index
                          ? AppColors.primaryColor
                          : Color(0xFFB7B8B8),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }
}

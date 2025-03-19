import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';


class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {

  Future<void> goToNextSplashScreen() async{
    await Future.delayed(const Duration(seconds: 2));
    if(mounted){
      Get.offAllNamed(AppRoute.onboardingScreen);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      goToNextSplashScreen();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.backgroundImage),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter
            )
        ),
        child: Center(child: Image(image: AssetImage(AppImages.splashScreenTwo), fit: BoxFit.cover,)),
      ),
    );
  }
}


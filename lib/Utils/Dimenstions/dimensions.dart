import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //margin ratio
  static double margin10 = screenHeight * (10 / screenHeight);
  //marign static double padding15 = screenHeight/58.2;
  static double margin15 = screenHeight * (15 / screenHeight);
  static double margin20 = screenHeight * (20 / screenHeight);

  // Method to get responsive font size based on screen width
  static double getResponsiveFontSize(double baseFontSize) {
    double screenWidth = Get.context!.width;
    double responsiveFontSize = baseFontSize * (screenWidth / 375);
    return responsiveFontSize;
  }

  //padding ratio
  static double padding05 = screenHeight * (5 / screenHeight);
  static double padding08 = screenHeight * (8 / screenHeight);
  static double padding10 = screenHeight * (10 / screenHeight);
  static double padding12 = screenHeight * (12 / screenHeight);
  static double padding15 = screenHeight * (15 / screenHeight);
  static double padding20 = screenHeight * (20 / screenHeight);
  static double padding30 = screenHeight * (30 / screenHeight);
  static double padding70 = screenHeight * (70 / screenHeight);

  //height ratio
  static double height5 = screenHeight * (5 / screenHeight);
  static double height6 = screenHeight * (6 / screenHeight);
  static double height08 = screenHeight * (8 / screenHeight);
  static double height10 = screenHeight * (10 / screenHeight);
  static double height12 = screenHeight * (12 / screenHeight);
  static double height15 = screenHeight * (15 / screenHeight);
  static double height16 = screenHeight * (16 / screenHeight);
  static double height20 = screenHeight * (20 / screenHeight);
  static double height28 = screenHeight * (28 / screenHeight);
  static double height30 = screenHeight * (30 / screenHeight);
  static double height32 = screenHeight * (32 / screenHeight);
  static double height35 = screenHeight * (35 / screenHeight);
  static double height40 = screenHeight * (40 / screenHeight);
  static double height45 = screenHeight * (45 / screenHeight);
  static double height50 = screenHeight * (50 / screenHeight);
  static double height56 = screenHeight * (56 / screenHeight);
  static double height60 = screenHeight * (60 / screenHeight);
  static double height64 = screenHeight * (64 / screenHeight);
  static double height66 = screenHeight * (66 / screenHeight);
  static double height70 = screenHeight * (70 / screenHeight);
  static double height80 = screenHeight * (80 / screenHeight);
  static double height85 = screenHeight * (85 / screenHeight);
  static double height86 = screenHeight * (86 / screenHeight);
  static double height97 = screenHeight * (97 / screenHeight);
  static double height99 = screenHeight * (99 / screenHeight);
  static double height100 = screenHeight * (100 / screenHeight);
  static double height108 = screenHeight * (108 / screenHeight);
  static double height113 = screenHeight * (118 / screenHeight);
  static double height120 = screenHeight * (120 / screenHeight);
  static double height123 = screenHeight * (123 / screenHeight);
  static double height125 = screenHeight * (125 / screenHeight);
  static double height140 = screenHeight * (140 / screenHeight);
  static double height150 = screenHeight * (150 / screenHeight);
  static double height160 = screenHeight * (160 / screenHeight);
  static double height170 = screenHeight * (170 / screenHeight);
  static double height200 = screenHeight * (200 / screenHeight);
  static double height230 = screenHeight * (230 / screenHeight);
  static double height240 = screenHeight * (240 / screenHeight);
  static double height260 = screenHeight * (260 / screenHeight);
  static double height263 = screenHeight * (263 / screenHeight);
  static double height275 = screenHeight * (275 / screenHeight);
  static double height280 = screenHeight * (280 / screenHeight);
  static double height290 = screenHeight * (290 / screenHeight);
  static double height300 = screenHeight * (300 / screenHeight);
  static double height305 = screenHeight * (305 / screenHeight);
  static double height310 = screenHeight * (310 / screenHeight);
  static double height315 = screenHeight * (315 / screenHeight);
  static double height320 = screenHeight * (320 / screenHeight);
  static double height325 = screenHeight * (325 / screenHeight);
  static double height360 = screenHeight * (360 / screenHeight);
  static double height375 = screenHeight * (375 / screenHeight);
  static double height385 = screenHeight * (385 / screenHeight);
  static double heightScreenHalf = screenHeight * 0.5;

  //width ratio
  static double width08 = screenWidth * (8 / screenWidth);
  static double width10 = screenWidth * (10 / screenWidth);
  static double width15 = screenWidth * (15 / screenWidth);
  static double width20 = screenWidth * (20 / screenWidth);
  static double width30 = screenWidth * (30 / screenWidth);
  static double width35 = screenWidth * (35 / screenWidth);
  static double width42 = screenWidth * (42 / screenWidth);
  static double width50 = screenWidth * (50 / screenWidth);
  static double width60 = screenWidth * (60 / screenWidth);
  static double width65 = screenWidth * (65 / screenWidth);
  static double width71 = screenWidth * (71 / screenWidth);
  static double width77 = screenWidth * (77 / screenWidth);
  static double width90 = screenWidth * (90 / screenWidth);
  static double width100 = screenWidth * (100 / screenWidth);
  static double width106 = screenWidth * (106 / screenWidth);
  static double width125 = screenWidth * (125 / screenWidth);
  static double width128 = screenWidth * (128 / screenWidth);
  static double width135 = screenWidth * (135 / screenWidth);
  static double width142 = screenWidth * (142 / screenWidth);
  static double width145 = screenWidth * (145 / screenWidth);
  static double width150 = screenWidth * (150 / screenWidth);
  static double width155 = screenWidth * (155 / screenWidth);
  static double width162 = screenWidth * (162 / screenWidth);
  static double width170 = screenWidth * (170 / screenWidth);
  static double width180 = screenWidth * (180 / screenWidth);
  static double width200 = screenWidth * (200 / screenWidth);
  static double width225 = screenWidth * (225 / screenWidth);
  static double width254 = screenWidth * (254 / screenWidth);
  static double widthScreen60 = screenWidth * 0.6;
  static double widthScreen70 = screenWidth * 0.7;
  static double widthScreen90 = screenWidth * 0.9;
  static double widthScreenHalf = screenWidth * 0.5;

  //font ratio
  static double font10 = screenHeight * (10 / screenHeight);
  static double font11 = screenHeight * (11 / screenHeight);
  static double font12 = screenHeight * (12 / screenHeight);
  static double font14 = screenHeight * (14 / screenHeight);
  static double font15 = screenHeight * (15 / screenHeight);
  static double font16 = screenHeight * (16 / screenHeight);
  static double font18 = screenHeight * (18 / screenHeight);
  static double font20 = screenHeight * (20 / screenHeight);
  static double font22 = screenHeight * (22 / screenHeight);
  static double font24 = screenHeight * (24 / screenHeight);
  static double font26 = screenHeight * (26 / screenHeight);
  static double font30 = screenHeight * (30 / screenHeight);
  static double font32 = screenHeight * (32 / screenHeight);
  static double font36 = screenHeight * (36 / screenHeight);

  //radius ratio
  static double radius4 = screenHeight * (4 / screenHeight);
  static double radius6 = screenHeight * (6 / screenHeight);
  static double radius8 = screenHeight * (8 / screenHeight);
  static double radius12 = screenHeight * (12 / screenHeight);
  static double radius15 = screenHeight * (15 / screenHeight);
  static double radius20 = screenHeight * (20 / screenHeight);

  //icon ratio
  static double iconSize12 = screenHeight * (12 / screenHeight);
  static double iconSize15 = screenHeight * (15 / screenHeight);
  static double iconSize20 = screenHeight * (20 / screenHeight);
  static double iconSize25 = screenHeight * (25 / screenHeight);
  static double iconSize30 = screenHeight * (30 / screenHeight);

  // Position ratio
  static double right60 = screenWidth * (60 / screenWidth);
  static double top280 = screenHeight * .2999;

  // icon ratio
  static double icon16 = screenHeight * (16 / screenHeight);
  static double icon20 = screenHeight * (20 / screenHeight);
  static double icon22 = screenHeight * (22 / screenHeight);
  static double icon24 = screenHeight * (24 / screenHeight);
  static double icon28 = screenHeight * (28 / screenHeight);
}
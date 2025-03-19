import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/core/dependency/dependency.dart';
import 'package:luxury_car_service/view/module/common/splash/screen_one.dart';

void main() {
  DependencyInjection di = DependencyInjection();
  di.dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LuxuryCarService());
}

class LuxuryCarService extends StatelessWidget {
  const LuxuryCarService({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: AppRoute.splashScreenOne,
        navigatorKey: Get.key,
        getPages: AppRoute.routes,
        transitionDuration: const Duration(milliseconds: 200),
        initialBinding: DependencyInjection(),
      ),
    );
  }
}

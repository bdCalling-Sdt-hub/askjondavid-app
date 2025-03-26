import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/StaticString/static_string.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/common/auth/auth_widgets/custom_button.dart';
import 'package:luxury_car_service/view/module/customer/home/controller/home_controller.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class SecurityPersonnelDetails extends StatelessWidget {
  const SecurityPersonnelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.backgroundImage),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HeightGap(height: 10),
                        // AppBar Icon
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(Icons.arrow_back_ios_sharp,
                                  size: 20, color: AppColors.appGrayColor)),
                        ),
                        HeightGap(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                HeightGap(height: 8),
                                BespokeServiceDetailsCartWidget(
                                  image:
                                      "https://cdn.pixabay.com/photo/2022/07/22/19/34/car-7338818_1280.jpg",
                                ),
                                HeightGap(height: 20),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                          "https://img.freepik.com/free-photo/young-man-with-beard-round-glasses_273609-5845.jpg"),
                                    ),
                                    WidthGap(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Micheal",
                                          style: TextStyles.regular16.copyWith(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.textGreyColor,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Car Model: ",
                                              style:
                                                  TextStyles.regular16.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.textGreyColor,
                                              ),
                                            ),
                                            Text(
                                              "Ferrari 364",
                                              style:
                                                  TextStyles.regular16.copyWith(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.textGreyColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                /// TabBar
                                HeightGap(height: 16.h),
                                buildTabBar(),
                                // View tab page
                                SizedBox(
                                  height: 174.h,
                                  child: Column(
                                    children: [
                                      buildTabBarView(context),
                                      HeightGap(height: 26.h),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 52.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Color(0xFF18181A)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Row(
                                      children: [
                                        SvgPictureWidget(
                                          imageUrl: AppImages.bookingAssistant,
                                          height: 18.h,
                                          width: 15.w,
                                        ),
                                        WidthGap(width: 8),
                                        Text(
                                          "Booking your assistant number",
                                          style: TextStyles.regular16.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.textGreyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: CustomButton(
                                      text: "Register Now", onTap: () {
                                        Get.toNamed(AppRoute.payment);
                                  }),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Everything of TabBar
  Widget buildTabBar() {
    return GetBuilder<HomeController>(
      builder: (controller) => Row(
        children: [
          Expanded(child: _buildTabBar(controller)),
        ],
      ),
    );
  }

  // TabBar and Tabs
  Container _buildTabBar(HomeController homeController) {
    final homeController = Get.find<HomeController>();
    return Container(
      height: 42.h,
      decoration: BoxDecoration(
          color: AppColors.appBg, borderRadius: BorderRadius.circular(30)),
      child: TabBar(
        tabAlignment: TabAlignment.start,
        padding: EdgeInsets.zero,
        isScrollable: true,
        onTap: (index) {
          homeController.updatedSelectedIndex(index);
        },
        indicator: BoxDecoration(
            // color: ,
            borderRadius: BorderRadius.circular(90),
            boxShadow: [],
            border: Border.all(color: Colors.transparent)),
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        labelColor: Color(0xFFABABAB),
        unselectedLabelColor: AppColors.white700,
        labelStyle: TextStyles.regular20.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        labelPadding: EdgeInsets.symmetric(horizontal: 8),
        unselectedLabelStyle: TextStyles.regular20.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        tabs: [
          homeController.tabIndex == 0
              ? Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('All'),
                    ),
                  ),
                )
              : Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFABABAB)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('All'),
                    ),
                  ),
                ),
          homeController.tabIndex == 1
              ? Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('Scheduling'),
                    ),
                  ),
                )
              : Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFABABAB)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('Scheduling'),
                    ),
                  ),
                ),
          homeController.tabIndex == 2
              ? Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('Task Tracking'),
                    ),
                  ),
                )
              : Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFABABAB)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('Task Tracking'),
                    ),
                  ),
                ),
          homeController.tabIndex == 3
              ? Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF18181A),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('Real-Time Communication'),
                    ),
                  ),
                )
              : Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFABABAB)),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text('Real-Time Communication'),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  // TabBar view
  Expanded buildTabBarView(context) {
    return Expanded(
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Center(
            child: Container(
              child: Text(
                AppString.securityPersonnelManagement,
                style: TextStyles.regular16.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFABABAB),
                    overflow: TextOverflow.fade),
              ),
            ),
          ),
          Center(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightGap(height: 14.h),
                Text(
                  'Start Date',
                  style: TextStyles.regular12.copyWith(
                      color: AppColors.appGrayColor,
                      fontWeight: FontWeight.w600),
                ),
                HeightGap(height: 8),
                Obx(() {
                  final homeController = Get.find<HomeController>();
                  return Container(
                    height: 52.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF18181A)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: TextEditingController(
                                text: homeController.selectedDate.value),
                            style: TextStyles.regular16.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.appGrayColor),
                            decoration: InputDecoration(
                                hintText: 'mm/dd/yyyy',
                                hintStyle: TextStyles.regular14.copyWith(
                                  color: AppColors.appGrayColor,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    EvaIcons.calendarOutline,
                                    color: AppColors.appGrayColor,
                                  ),
                                  onPressed: () async {
                                    DateTime? selectedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2101),
                                    );

                                    if (selectedDate != null) {
                                      String formattedDate =
                                          DateFormat('MM/dd/yyyy')
                                              .format(selectedDate);
                                      homeController.selectedDate.value =
                                          formattedDate;
                                    }
                                  },
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 14),
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                HeightGap(height: 8),
                Text(
                  'End Date',
                  style: TextStyles.regular12.copyWith(
                      color: AppColors.appGrayColor,
                      fontWeight: FontWeight.w600),
                ),
                HeightGap(height: 8),
                Obx(() {
                  final homeController = Get.find<HomeController>();
                  return Container(
                    height: 52.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF18181A)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: TextEditingController(
                                text: homeController.selectedDate.value),
                            style: TextStyles.regular16.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.appGrayColor),
                            decoration: InputDecoration(
                                hintText: 'mm/dd/yyyy',
                                hintStyle: TextStyles.regular14.copyWith(
                                  color: AppColors.appGrayColor,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    EvaIcons.calendarOutline,
                                    color: AppColors.appGrayColor,
                                  ),
                                  onPressed: () async {
                                    DateTime? selectedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2101),
                                    );

                                    if (selectedDate != null) {
                                      String formattedDate =
                                          DateFormat('MM/dd/yyyy')
                                              .format(selectedDate);
                                      homeController.selectedDate.value =
                                          formattedDate;
                                    }
                                  },
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 14),
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 190.h,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GetBuilder<HomeController>(
                    builder: (homeController) {
                      return GoogleMap(
                        initialCameraPosition: homeController.initialPosition,
                        onMapCreated: (controller) {
                          homeController.mapController = controller;
                        },
                        markers: homeController.markers,
                        zoomControlsEnabled: false,
                        myLocationEnabled: true,
                        myLocationButtonEnabled: true,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Center(
              child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.messageScreen);
                  },
                  child: SvgPictureWidget(
                    imageUrl: AppImages.messageIcon,
                    height: 52.h,
                    width: 32.w,
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class BespokeServiceDetailsCartWidget extends StatelessWidget {
  final String image;

  const BespokeServiceDetailsCartWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image as background
        Container(
          height: 210.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Container(
          height: 210.h,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black26,
                Colors.black26,
              ],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        /// Price
        Positioned(
            bottom: 16.h,
            right: 12.w,
            child: Text(
              '\$2700.000',
              style: TextStyles.regular16.copyWith(
                color: AppColors.textGreyColor,
              ),
            )),
      ],
    );
  }
}

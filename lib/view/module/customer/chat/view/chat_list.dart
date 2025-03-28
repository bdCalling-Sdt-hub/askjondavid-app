import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/core/app_route/app_route.dart';
import 'package:luxury_car_service/view/module/customer/chat/chat_widget/chat_list_widget.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/app_bar_without_button.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
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
              HeightGap(height: 24),
              // AppBar
              AppBarWithoutButton(text: 'Chat',),
              HeightGap(height: 35),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView.separated(
                      itemCount: 7,
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            Get.toNamed(AppRoute.messageScreen);
                          },
                          child: Container(
                            height: 73.h,
                            width: double.infinity,
                            child: ChatListWidget(
                              image: "https://www.shutterstock.com/image-photo/profile-picture-smiling-young-african-260nw-1873784920.jpg",
                              name: "Ethan Michael",
                              text: "Hey there!",
                              time: "12.50PM",
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (_,__){
                        return HeightGap(height: 30.h);
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


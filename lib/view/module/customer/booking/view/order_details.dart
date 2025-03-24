import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Global/widgets/custom_app_bar.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(onTap: (){Get.back();}, title: "Order Details",),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 28.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Order id: #10kkj', style: TextStyles.title20.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFC7BA86),
                    ),),
                    HeightGap(height: 16),// Personal Information
                    Text("Personal Information", style: TextStyles.regular20.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFABABAB)
                    ),),
                    HeightGap(height: 16),
                    _orderDetails(context, "Full Name", "Daniel Christopher Walker"),
                    HeightGap(height: 12),
                    _orderDetails(context, "Address", "2972 Westheimer Rd."),

                    // Car information
                    HeightGap(height: 28),
                    Text("Car Information", style: TextStyles.regular20.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFABABAB)
                    ),),
                    HeightGap(height: 16),
                    _orderDetails(context, "Brand", "Land Rover"),
                    HeightGap(height: 12),
                    _orderDetails(context, "Price", "2972 Westheimer Rd."),

                    // Amount Summary
                    HeightGap(height: 28),
                    Text("Amount Summery", style: TextStyles.regular20.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFABABAB)
                    ),),
                    HeightGap(height: 16),
                    _orderDetails(context, "Booking Fee (5%)", "(-) \$65"),
                    HeightGap(height: 12),
                    _orderDetails(context, "Protection Plan", "\$15%"),
                    HeightGap(height: 12),
                    _orderDetails(context, "Due Amount", "\$700.89"),
                    HeightGap(height: 12),
                    Divider(color: Color(0xFF9B9168),),
                    HeightGap(height: 28),
                    _orderDetails(context, "Total Amount", "\$715.89"),
                  ],
                ),
              ),
            ),

          ],
        ),
      )
    );
  }

  Column _orderDetails(BuildContext context, String label, String value) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             SizedBox(
               width: MediaQuery.of(context).size.width/3.4,
               child: Text(label, style: TextStyles.regular15.copyWith(
                 color: Color(0xFF929292)
               )),
             ),
             SizedBox(
               width: MediaQuery.of(context).size.width/1.6,
               child: Text(":  $value", style: TextStyles.regular16.copyWith(
                 fontWeight: FontWeight.w600,
                 color: Color(0xFFABABAB)
               ),),

             ),
            ],
          ),
        ],
      );
  }

}
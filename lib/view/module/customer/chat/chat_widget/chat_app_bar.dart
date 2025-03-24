import 'package:flutter/material.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class CustomMessageAppBar extends StatelessWidget {
  final String title;
  final String profile;
  final bool? needBackWardIcon;
  final VoidCallback? ontap;
  const CustomMessageAppBar({
    super.key,
    required this.title,
    required this.profile,
    this.needBackWardIcon,
    this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.appBg,
        boxShadow: [
          BoxShadow(
            color: Color(0xff181d1f).withOpacity(0.9),
            spreadRadius:0,
            blurRadius: 4,
            offset: Offset(0, 4), // Bottom shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 19, right: 19),
        child: Column(
          children: [
            HeightGap(height: 20),
            Row(
              children: [
                needBackWardIcon==true? Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 16),
                  child: GestureDetector(
                    onTap: ontap,
                    child: Icon(Icons.arrow_back_ios_new_outlined,
                        size: 20, color: Color(0xFFE7E6E4)),
                  ),
                ): SizedBox(),
                CircleAvatar(
                  radius: 16,
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                       "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"
                      ),
                      height: 32,
                      width: 32,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                WidthGap(width: 10),
                Text(
                  title,
                  style: TextStyles.regular15.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Icon(Icons.info_outline, size: 24, color: Color(0xffCECBC5),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

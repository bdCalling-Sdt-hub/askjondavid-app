import 'package:flutter/material.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';

class ChatListWidget extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  final String time;
  const ChatListWidget({
    super.key,
    required this.image,
    required this.name,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(image),
            ),
            WidthGap(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style: TextStyles.regular20.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFB8B8B8)
                        ),),
                        Text(time, style: TextStyles.regular12.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFDBDBDB)
                        ),)
                      ],
                    ),
                    HeightGap(height: 4),
                    Text(text,style: TextStyles.regular12.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFB8B8B8)
                    ),),
                  ],
                ),
              ),
            ),


          ],
        ),
        HeightGap(height: 2),
        Divider(color: Color(0xFF9B9168), thickness: 0.5, height: 10,)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/AppImg/app_img.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/chat/chat_widget/chat_app_bar.dart';
import 'package:luxury_car_service/view/module/customer/chat/controller/chat_controller.dart';
import 'package:luxury_car_service/view/module/customer/home/home_widget/svg_picture.dart';
import 'package:luxury_car_service/view/widgets/custom_sizedbox/custom_sizedbox.dart';
import 'package:luxury_car_service/view/widgets/custom_text_field/custom_text_field.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatController = Get.find<ChatController>();

    return Scaffold(
      backgroundColor: AppColors.appBg,
      body: SafeArea(
        child: Column(
          children: [
            /// Custom AppBar
            CustomMessageAppBar(title: 'Asad Khan',profile: "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg", needBackWardIcon: true, ontap: (){
              Get.back();
            }),
            HeightGap(height: 20),

            // Messages
            Expanded(
              child: Obx(() => ListView.builder(
                controller: chatController.scrollController, // Attach scrollController
                itemCount: chatController.messages.length,
                itemBuilder: (context, index) {
                  final message = chatController.messages[index];
                  return Align(
                    alignment: message.isSent ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(10),
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                        decoration: BoxDecoration(
                          color: message.isSent ? Colors.grey[800] : Colors.grey[900],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // For received messages, show profile and name at the top
                            if (!message.isSent)
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 6,
                                    backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"), // Assuming you have the sender's profile image
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Asad Khan", // Assuming you have the sender's name
                                    style: TextStyles.regular12.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.appGrayColor
                                    ),
                                  ),
                                ],
                              ),

                            if (message.imageUrl != null)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(message.imageUrl!),
                              ),
                            if (message.text.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  message.text,
                                  style: TextStyles.regular14.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.appGrayColor
                                  )
                                ),
                              ),
                            SizedBox(height: 4),
                            // Time and icon
                            Row(
                              mainAxisAlignment: message.isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
                              children: [
                                if (message.isSent) // For sent messages (show the time and double check icon)
                                  Row(
                                    children: [
                                      Text(
                                        "10:11", // Display message time
                                        style: TextStyles.regular12.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.appGrayColor
                                        )
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.check_circle, // Double check icon
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                if (!message.isSent) // For received messages (show time)
                                  Text(
                                    "10:11", // Display message time
                                    style: TextStyles.regular12.copyWith(
                                      fontWeight: FontWeight.w500,
                                        color: Color(0xFFF66E10)
                                    )
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ),
            _buildMessageInput(chatController),
          ],
        ),
      ),
    );
  }

  // Message Input Box
  Widget _buildMessageInput(ChatController chatController) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.appBg,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPictureWidget(imageUrl: AppImages.fileSvgIcon, height: 28, width: 28)
                ),
                WidthGap(width: 16),
              ],
            ),
            Expanded(
              child: CustomTextFromField(
                hintText: 'Type your message',
                hasFiilColor: true,
                controller: chatController.messageController,
                onTap: () {
                  // Scroll to bottom when tapping text field
                  Future.delayed(Duration(milliseconds: 300), chatController.scrollToBottom);
                },
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: chatController.sendMessage,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xffCFB66B),
                  child: SvgPictureWidget(imageUrl: AppImages.sentSvgIcon)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

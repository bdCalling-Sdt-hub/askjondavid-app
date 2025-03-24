import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/Utils/AppColors/app_colors.dart';
import 'package:luxury_car_service/Utils/Texts/text_style.dart';
import 'package:luxury_car_service/view/module/customer/chat/chat_widget/chat_app_bar.dart';
import 'package:luxury_car_service/view/module/customer/chat/controller/chat_controller.dart';
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
            CustomMessageAppBar(title: 'Asad Khan',profile: "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg", needBackWardIcon: true, ontap: (){
              Get.back();
            },),
            HeightGap(height: 20),
            // Expanded(
            //   child: Obx(() => ListView.builder(
            //     controller: chatController.scrollController, // Attach scrollController
            //     itemCount: chatController.messages.length,
            //     itemBuilder: (context, index) {
            //       final message = chatController.messages[index];
            //       return Align(
            //         alignment: message.isSent ? Alignment.centerRight : Alignment.centerLeft,
            //         child: Container(
            //           margin: EdgeInsets.symmetric(vertical: 5),
            //           padding: EdgeInsets.all(10),
            //           constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            //           decoration: BoxDecoration(
            //             color: message.isSent ? Colors.grey[800] : Colors.grey[900],
            //             borderRadius: BorderRadius.circular(15),
            //           ),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               if (!message.isSent) // For received messages (show profile picture and name)
            //                 Row(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 15,
            //                       backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
            //                     ),
            //                     SizedBox(width: 8),
            //                     Text(
            //                       "Sender",
            //                       style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            //                     ),
            //                   ],
            //                 ),
            //               if (message.imageUrl != null)
            //                 ClipRRect(
            //                   borderRadius: BorderRadius.circular(10),
            //                   child: Image.network(message.imageUrl!),
            //                 ),
            //               if (message.text.isNotEmpty)
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 8.0),
            //                   child: Text(
            //                     message.text,
            //                     style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
            //                   ),
            //                 ),
            //               SizedBox(height: 4),
            //               // Time and icon
            //               Row(
            //                 mainAxisAlignment: message.isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
            //                 children: [
            //                   if (message.isSent) // For sent messages (show the time and double check icon)
            //                     Row(
            //                       children: [
            //                         Text(
            //                          "10:11", // Display message time
            //                           style: TextStyle(color: Colors.white, fontSize: 10),
            //                         ),
            //                         SizedBox(width: 5),
            //                         Icon(
            //                           Icons.check_circle, // Double check icon
            //                           color: Colors.white,
            //                           size: 16,
            //                         ),
            //                       ],
            //                     ),
            //                   if (!message.isSent) // For received messages (show time)
            //                     Text(
            //                       "10:11", // Display message time
            //                       style: TextStyle(color: Colors.white, fontSize: 10),
            //                     ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   )),
            // ),
            Expanded(
              child: Obx(() => ListView.builder(
                controller: chatController.scrollController, // Attach scrollController
                itemCount: chatController.messages.length,
                itemBuilder: (context, index) {
                  final message = chatController.messages[index];
                  return Align(
                    alignment: message.isSent ? Alignment.centerRight : Alignment.centerLeft,
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
                                  radius: 8,
                                  backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"), // Assuming you have the sender's profile image
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Sender", // Assuming you have the sender's name
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
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
                                      style: TextStyle(color: Colors.white, fontSize: 10),
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
                                  style: TextStyle(color: Colors.white, fontSize: 10),
                                ),
                            ],
                          ),
                        ],
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
        boxShadow: [
          BoxShadow(
            color: Color(0xff181d1f).withOpacity(0.9),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, -4), // Bottom shadow
          ),
        ],
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
                  // child: CustomSvgImage(imagePath: AppIcons.attachedFile, height: 20, width: 20, isColorWhite: true),
                  child: Icon(Icons.add),
                ),
                WidthGap(width: 16),
                GestureDetector(
                  onTap: () {},
                  // child: CustomSvgImage(imagePath: AppIcons.videoIcon, height: 20, width: 20, isColorWhite: true),
                  child: Icon(Icons.add),
                ),
                WidthGap(width: 16),
                GestureDetector(
                  onTap: () {},
                  // child: CustomSvgImage(imagePath: AppIcons.avatarIcon, height: 20, width: 20, isColorWhite: true),
                  child: Icon(Icons.add),

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
              child: CircleAvatar(
                backgroundColor: Color(0xffCFB66B),
                child: Center(child: Icon(Icons.send, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

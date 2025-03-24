import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxury_car_service/view/module/customer/chat/model/message_model.dart';

class ChatController extends GetxController {
  var messages = <Message>[].obs;
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchMessages();
  }

  void fetchMessages() {
    messages.assignAll([
      Message(text: "Hello Asad, How are you friend?", isSent: true),
      Message(text: "I'm fine, How's your basketball tournament going?", isSent: false),
      Message(text: "We won this tournament dude", isSent: true, imageUrl: "https://cdn.pixabay.com/photo/2016/06/01/20/49/basketball-1429646_640.jpg"),
      Message(text: "Wow, It's great.", isSent: false),
    ]);
    scrollToBottom();
  }

  void sendMessage() {
    if (messageController.text.trim().isNotEmpty) {
      messages.add(Message(text: messageController.text.trim(), isSent: true));
      messageController.clear();
      Future.delayed(Duration(milliseconds: 100), () => scrollToBottom());
    }
  }

  void scrollToBottom() {
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }
}


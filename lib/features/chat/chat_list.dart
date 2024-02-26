import 'package:flutter/material.dart';
import 'package:whatsapp_ui/features/chat/receiver_message_card.dart';
import 'package:whatsapp_ui/features/chat/sender_message_card.dart';
import 'package:whatsapp_ui/data/data.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          }
          return ReceiverMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        },
      ),
    );
  }
}

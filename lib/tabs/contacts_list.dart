import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/data.dart';
import 'package:whatsapp_ui/features/chat/chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                ),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(users[index]['profileImage'].toString()),
              ),
              title: Text(users[index]['name'].toString()),
              subtitle: Text(users[index]['message'].toString()),
              trailing: Text(users[index]['messageTime'].toString()),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.comment,
        ),
      ),
    );
  }
}

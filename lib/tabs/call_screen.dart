import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/custom_widgets.dart';
import 'package:whatsapp_ui/data/data.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Icon(Icons.link),
            ),
            title: const Text('Create call link'),
            subtitle: const Text('Share a link for your whatsapp call'),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return CustomWidgets.customCallListTile(
                    users[index]['profileImage'].toString(),
                    users[index]['name'].toString(),
                    randomDates[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/custom_widgets.dart';
import 'package:whatsapp_ui/data/data.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Stack(
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(65),
                    child: const Image(
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            title: const Text(
              'John Doe',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Tap to add status update'),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Recent Updates'),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return CustomWidgets.customStatusListTile(
                  users[index]['profileImage'].toString(),
                  users[index]['name'].toString(),
                  users[index]['messageTime'].toString(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

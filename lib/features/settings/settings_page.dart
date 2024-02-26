import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/custom_widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600'),
            ),
            title: Text(
              'Username',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Hey there! I am using whatsapp'),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 3,
          ),
          CustomWidgets.customListTile(
              Icons.key, 'Account', 'Security notifications, change number'),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          CustomWidgets.customListTile(
              Icons.lock, 'Privacy', 'Block contacts, disappearing messages'),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          CustomWidgets.customListTile(
              Icons.comment, 'Chats', 'Theme, wallpaper, chat history'),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          CustomWidgets.customListTile(Icons.notifications, 'Notifications',
              'Message, group & call tones'),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          CustomWidgets.customListTile(Icons.circle_outlined,
              'Storage and Data', 'Network usage, auto download'),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          CustomWidgets.customListTile(
              Icons.language, 'App language', 'English (device\'s language)'),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          CustomWidgets.customListTile(
              Icons.help, 'Help', 'Help center, contact us, privacy policy')
        ],
      ),
    );
  }
}

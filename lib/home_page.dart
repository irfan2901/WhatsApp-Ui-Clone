import 'package:flutter/material.dart';
import 'package:whatsapp_ui/features/settings/settings_page.dart';
import 'package:whatsapp_ui/tabs/call_screen.dart';
import 'package:whatsapp_ui/tabs/contacts_list.dart';
import 'package:whatsapp_ui/tabs/status_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
            padding: const EdgeInsets.symmetric(vertical: 10),
            initialValue: null,
            onSelected: (menu) {
              setState(() {
                switch (menu) {
                  case 0:
                    // New Group
                    // Add navigation logic for New Group screen
                    break;
                  case 1:
                    // New Broadcast
                    // Add navigation logic for New Broadcast screen
                    break;
                  case 2:
                    // Linked Devices
                    // Add navigation logic for Linked Devices screen
                    break;
                  case 3:
                    // Starred Messages
                    // Add navigation logic for Starred Messages screen
                    break;
                  case 4:
                    // Settings
                    // Add navigation logic for Settings screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                    break;
                }
              });
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 0,
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Broadcast'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Linked Devices'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Starred Messages'),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text('Settings'),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorWeight: 4,
          indicatorColor: Colors.green,
          tabs: const [
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          ContactsList(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }
}

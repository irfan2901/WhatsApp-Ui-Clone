import 'package:flutter/material.dart';

class CustomWidgets {
  static customListTile(IconData iconData, String title, String subTitle) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
    );
  }

  static customStatusListTile(String imageUrl, String name, String time) {
    return ListTile(
      leading: ClipOval(
        child: Container(
          width: 60,
          height: 60,
          color: Colors.green,
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }

  static customCallListTile(String imageUrl, String title, String subTitle) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
      trailing: const Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }
}

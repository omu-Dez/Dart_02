import 'package:flutter_application_1/lesson-6/miii.dart';

import 'AppDrawer.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: Center(
        child: ListView.builder(
          itemCount: chatList.length,
          itemBuilder: (context,  index) {
            final contact = chatList[index];
            String contactOnline = contact.online;
            String firstLetter = contact.name.isNotEmpty ? contact.name[0].toLowerCase() : '';
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: contact.avatar,
                child: Text(
                  firstLetter,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              title: Text(
                contact.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              subtitle: Text(contactOnline),
              onTap: () {},
            );
            },
            ),
      ),
    );
  }
}

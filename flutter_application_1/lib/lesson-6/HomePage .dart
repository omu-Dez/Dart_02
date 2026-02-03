import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson-6/chat.dart';
import 'AppDrawer.dart';
import 'AppDrawer.dart';
import 'miii.dart';


class HomePage extends StatelessWidget {
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;
  const HomePage({
    super.key,
    required this.onToggleTheme,
    required this.themeMode,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram Drawer'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onToggleTheme,
        tooltip: 'Сменить тему',
        child: Icon(
          themeMode == ThemeMode.light
              ? Icons.dark_mode
              : Icons.light_mode,
        ),
      ),
      drawer: AppDrawer(onToggleTheme: onToggleTheme, themeMode: themeMode,),
      body: ListView.separated(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final contact = chatList[index];
          String firstLetter = contact.name.isNotEmpty
              ? contact.name[0].toUpperCase()
              : "";
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: contact.avatar,
              child: Text(
                firstLetter,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              contact.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(contact.text),
            trailing: Text(contact.time, style: const TextStyle(fontSize: 10)),
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: 1,
          thickness: 1,
          indent: 70,
          endIndent: 10,
          color: Colors.grey.shade300,
        ),
      ),
    );
  } 
}

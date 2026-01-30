import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> contacts = [
      'Алексей',
      'Мария',
      'Данияр',
      'Айдана',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Список контакты'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final name = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.blue.shade100,
              child: Text(
                name[0],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            title: Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
            subtitle: const Text(
              'в сети',
              style: TextStyle(color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}

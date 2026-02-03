import 'package:flutter/material.dart';
import 'miii.dart';
import 'ContactPage.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});
  @override
  Widget build(BuildContext context) {
    final callHistory = chatList
        .where((contact) => contact.callData != null)
        .toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Звонок')),
      body: callHistory.isEmpty
          ? const Center(child: Text("Звонков пока нет"))
          : ListView.builder(
              itemCount: callHistory.length,
              itemBuilder: (context, index) {
                final contact = callHistory[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: contact.avatar,
                    child: Text(contact.name[0].toUpperCase()),
                  ),
                  title: Text(contact.name),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.call_made,
                        size: 16,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 5),
                      Text(contact.callData!),
                    ],
                  ),
                  trailing: const Icon(Icons.call, color: Color(0xFF2AABEE)),
                );
              },
            ),
    );
  }
}
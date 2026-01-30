import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> calls = [
      {
        'name': 'Мама',
        'date': 'Сегодня',
        'icon': Icons.call_received,},
      {
        'name': 'Алексей',
        'date': 'Вчера',
        'icon': Icons.call_made,},
      {
        'name': 'Мария',
        'date': '20 мая',
        'icon': Icons.call_merge,},
        {
        'name': 'Мария',
        'date': 'Утром',
        'icon': Icons.call_sharp,},
        {
        'name': 'Мария',
        'date': 'год назад',
        'icon': Icons.call_sharp,},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список звонков'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.blue.shade100,
              child: Text(
                call ['name'][0],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            title: Text(
              call['name'],
              style: const TextStyle(
                fontWeight: FontWeight.w600),
            ),

            subtitle: Text(
              call['date'],
              style: const TextStyle(
                color: Colors.grey),
            ),

            trailing: Icon(
              call['icon'],
              color: const Color.fromARGB(255, 0, 255, 8),
            ),
          );
        },
      ),
    );
  }
}

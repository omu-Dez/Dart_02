import 'AppDrawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Настройки')),
      body: const Center(
        child: Text(
          'Настройки',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

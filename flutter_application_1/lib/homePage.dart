import 'package:flutter/material.dart';
import 'appDrower.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram Drawer'),
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text(
          'Чаты',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

import 'RegistrationPage.dart';
import 'package:flutter/material.dart';
import 'RegistrationApp.dart';

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Регистрация',
      theme: ThemeData(useMaterial3: true, 
      colorSchemeSeed: Colors.blue),
      home: const RegistrationPage(),
    );
  }
}
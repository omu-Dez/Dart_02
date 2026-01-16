import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson_1/ProfilePage.dart';


class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
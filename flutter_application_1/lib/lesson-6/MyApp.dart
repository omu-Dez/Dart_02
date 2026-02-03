import 'package:flutter/material.dart';
import 'HomePage .dart';

class ThemePracticeApp extends StatefulWidget {
  const ThemePracticeApp({super.key});
  @override
  State<ThemePracticeApp> createState() => _ThemePracticeAppState();
}

class _ThemePracticeAppState extends State<ThemePracticeApp> {
  // ТЕКУЩИЙ РЕЖИМ ТЕМЫ
  ThemeMode _themeMode = ThemeMode.light;
  // ПЕРЕКЛЮЧЕНИЕ ТЕМЫ
  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Practice',
      // АКТИВНАЯ ТЕМА
      themeMode: _themeMode,
      // СВЕТЛАЯ ТЕМА
      theme: ThemeData(
        brightness: Brightness.light,

        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.indigo),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
        ),
      ),
      // ТЁМНАЯ ТЕМА
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFBB86FC)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFBB86FC),
        ),
      ),
      home: HomePage(onToggleTheme: toggleTheme, themeMode: _themeMode),
    );
  }
}

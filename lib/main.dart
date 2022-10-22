import 'package:flutter/material.dart';
import 'package:profile/configs/myapp_theme.dart';
import 'package:profile/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.dark;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: _themeMode == ThemeMode.dark
          ? MyAppThemeConfig.dark().getTheme()
          : MyAppThemeConfig.light().getTheme(),
      home: HomeScreen(onClick: () {
        setState(() {
          if (_themeMode == ThemeMode.dark) {
            _themeMode = ThemeMode.light;
          } else {
            _themeMode = ThemeMode.dark;
          }
        });
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/configs/color_theme.dart';
import 'package:profile/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
          ),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: ColorTheme.surfaceColor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none)),
          textTheme: GoogleFonts.latoTextTheme(const TextTheme(
              headline6: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              bodyText2: TextStyle(fontSize: 15),
              bodyText1: TextStyle(
                  fontSize: 14, color: Color.fromARGB(200, 255, 255, 255)),
              subtitle1:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.bold)))),
      home: const HomeScreen(),
    );
  }
}

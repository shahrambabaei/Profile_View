import 'package:flutter/material.dart';
import 'package:profile/configs/myapp_theme.dart';
import 'package:profile/screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  Locale _locale = const Locale('en');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: _themeMode == ThemeMode.dark
          ? MyAppThemeConfig.dark().getTheme(languageCode: _locale.languageCode)
          : MyAppThemeConfig.light()
              .getTheme(languageCode: _locale.languageCode),
      home: HomeScreen(
        onClick: () {
          setState(() {
            if (_themeMode == ThemeMode.dark) {
              _themeMode = ThemeMode.light;
            } else {
              _themeMode = ThemeMode.dark;
            }
          });
        }, selectedLanguageChanged: (Language newSelectedLanguageByUser) {
           setState(() {
          _locale = newSelectedLanguageByUser == Language.en
              ? const Locale('en')
              : const Locale('fa');
        });
          },
        
      ),
    );
  }
}

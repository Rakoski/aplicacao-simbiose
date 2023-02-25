import 'package:caixa_simbiose/components/theme-data/dark-theme-data.dart';
import 'package:caixa_simbiose/components/theme-data/light-theme-data.dart';
import 'package:caixa_simbiose/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LightThemeData().themeData,
      themeMode: ThemeMode.dark,
      darkTheme: DarkThemeData().themeData,
      home: Home(),
    );
  }
}

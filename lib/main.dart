import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/flutter_home_page.dart';
import 'package:flutter_app/pages/flutter_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FlutterSplashScreen(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: Colors.pink[60]),
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
            scaffoldBackgroundColor: Colors.pink[60]));
  }
}

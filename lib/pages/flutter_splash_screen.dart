import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/flutter_home_page.dart';

class FlutterSplashScreen extends StatefulWidget {
  @override
  State<FlutterSplashScreen> createState() => _FlutterSplashScreenState();
}

class _FlutterSplashScreenState extends State<FlutterSplashScreen> {
  splashScreenTimer() {
    Timer(const Duration(seconds: 4), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => FlutterHomePage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Text(
            "지켜보고있다",
            style: TextStyle(fontFamily: "gmarket_ttf", fontSize: 50),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

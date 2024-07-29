import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      width: 300,
      height: 100,
      child: Text(
        "지켜보고있다",
        style: TextStyle(fontFamily:"gmarket_ttf",fontSize:50),
        textAlign: TextAlign.center,
      ),
    );
  }
}

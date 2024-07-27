import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/see_you.png'),
        ),
      ),
    );
  }
}

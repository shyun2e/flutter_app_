import 'package:flutter/material.dart';

class AppTodayScore extends StatelessWidget {
  const AppTodayScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          width: 350,
          height: 200,
          //color: Colors.cyanAccent.withOpacity(0.4),
          child: Text(
            "오늘의 자세",
            style: TextStyle(
              fontFamily: "OrbitRegular",
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

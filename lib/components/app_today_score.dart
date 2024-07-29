import 'package:flutter/material.dart';

class AppTodayScore extends StatelessWidget {
  const AppTodayScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50)
      ),
      child: Text("오늘의 점수",
        style: TextStyle(
          fontFamily: "OrbitRegular",
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }}
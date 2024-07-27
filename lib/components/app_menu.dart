import 'package:flutter/material.dart';
import 'package:flutter_app/pages/flutter_month_page.dart';
import 'package:flutter_app/pages/flutter_ranking_page.dart';
import 'package:flutter_app/pages/flutter_screen_page.dart';
import 'package:flutter_app/pages/flutter_settings_page.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        shrinkWrap: true,
        primary: true,
        children: [
          _buildMenuButton("공부자세녹화", context, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlutterScreenPage()),
            );
          }),
          _buildMenuButton("설정", context, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlutterSettingsPage()),
            );
          }),
          _buildMenuButton("월별 통계", context, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlutterMonthPage()),
            );
          }),
          _buildMenuButton("랭킹", context, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlutterRankingPage()),
            );
          }),
        ],
      ),
    ]);
  }

  ElevatedButton _buildMenuButton(
      String _text, BuildContext context, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        _text,
        style: TextStyle(
            fontFamily: "OrbitRegular", fontSize: 20, color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        // backgroundColor: Colors.cyanAccent.withOpacity(0.7),
        // surfaceTintColor: Colors.cyanAccent.withOpacity(0.7),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/components/app_header.dart';
import 'package:flutter_app/components/app_menu.dart';
import 'package:flutter_app/components/app_today_score.dart';

class FlutterHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            AppHeader(),
            SizedBox(height: 30),
            AppTodayScore(),
            SizedBox(height: 30),
            AppMenu(),
          ],
        ));
  }
}

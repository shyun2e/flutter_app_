import 'package:flutter/material.dart';

class StretchTimeSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스트레칭 타임설정'),
      ),
      body: Center(
        child: Text(
          '스트레칭 타임 설정페이지입니다.',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
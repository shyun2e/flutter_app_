import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('알림 설정'),
      ),
      body: Center(
        child: Text(
          '알림설정 페이지입니다.',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 프로필'),
      ),
      body: Center(
        child: Text(
          '프로필 페이지입니다.',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FlutterSettingsPage extends StatelessWidget {
  const FlutterSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go To FirstPage')),
          ],
        ),
      ),
    );
  }
}

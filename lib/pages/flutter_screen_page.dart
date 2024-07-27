import 'package:flutter/material.dart';

class FlutterScreenPage extends StatelessWidget {
  const FlutterScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenPage'),
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

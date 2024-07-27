import 'package:flutter/material.dart';

class FlutterMonthPage extends StatelessWidget {
  const FlutterMonthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MonthPage'),
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

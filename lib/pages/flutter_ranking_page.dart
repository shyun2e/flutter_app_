import 'package:flutter/material.dart';

class FlutterRankingPage extends StatelessWidget {
  const FlutterRankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RankingPage'),
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

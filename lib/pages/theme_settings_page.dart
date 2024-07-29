import 'package:flutter/material.dart';

class ThemeSettingsPage extends StatelessWidget {
  final ValueNotifier<ThemeData> themeNotifier;

  ThemeSettingsPage({required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('테마 설정'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('하얀색 테마'),
            onTap: () {
              themeNotifier.value = ThemeData(
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                ),
                textTheme: ThemeData.light().textTheme.copyWith(
                  bodyLarge: TextStyle(color: Colors.black),
                  bodyMedium: TextStyle(color: Colors.black),
                ),
                listTileTheme: ListTileThemeData(
                  textColor: Colors.black, // ListTile 텍스트 색상
                ),
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('검정색 테마'),
            onTap: () {
              themeNotifier.value = ThemeData(
                scaffoldBackgroundColor: Colors.black,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                ),
                textTheme: ThemeData.dark().textTheme.copyWith(
                  bodyLarge: TextStyle(color: Colors.white),
                  bodyMedium: TextStyle(color: Colors.white),
                ),
                listTileTheme: ListTileThemeData(
                  textColor: Colors.white, // ListTile 텍스트 색상
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                ),
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

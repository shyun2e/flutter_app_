import 'package:flutter/material.dart';
import 'profile.dart'; // ProfilePage를 정의한 파일을 임포트합니다.
import 'notification_settings.dart'; // NotificationSettingsPage를 정의한 파일을 임포트합니다.
import 'theme_settings_page.dart'; // ThemeSettingsPage를 정의한 파일을 임포트합니다.
import 'stretch_time_settings_page.dart'; // StretchTimeSettingsPage를 정의한 파일을 임포트합니다';

class SettingsPage extends StatelessWidget {
  // ValueNotifier를 통해 테마 색상을 관리합니다.
  final ValueNotifier<ThemeData> _themeNotifier =
      ValueNotifier(ThemeData.light());

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: _themeNotifier,
      builder: (context, theme, child) {
        return MaterialApp(
          title: '지켜보고있다',
          theme: theme,
          home: FlutterSettingsPage(
              themeNotifier: _themeNotifier), // 테마 notifier를 전달합니다.
        );
      },
    );
  }
}

class FlutterSettingsPage extends StatelessWidget {
  final ValueNotifier<ThemeData> themeNotifier;

  FlutterSettingsPage({required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('설정'),
      ),
      body: SettingsList(themeNotifier: themeNotifier), // 테마 notifier를 전달합니다.
    );
  }
}

class SettingsList extends StatefulWidget {
  final ValueNotifier<ThemeData> themeNotifier;

  SettingsList({required this.themeNotifier});

  @override
  State<StatefulWidget> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  final _items = [
    '프로필',
    '알림 설정',
    '테마 설정',
    '스트레칭 시간 설정',
  ];
  final _saved = <String>{};

  Icon _getIcon(String item) {
    switch (item) {
      case '프로필':
        return Icon(Icons.person);
      case '알림 설정':
        return Icon(Icons.notifications);
      case '테마 설정':
        return Icon(Icons.wb_sunny);
      case '스트레칭 시간 설정':
        return Icon(Icons.access_time);
      default:
        return Icon(Icons.help);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildItems(context),
    );
  }

  Widget _buildItems(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: _items.map((item) {
        return Column(
          children: [
            _buildRow(item, context),
            Divider(),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildRow(String item, BuildContext context) {
    final alreadySaved = _saved.contains(item);
    return ListTile(
      title: Text(
        item,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      leading: _getIcon(item),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(item);
          } else {
            _saved.add(item);
          }
        });

        // 항목 클릭 시 올바른 페이지로 이동합니다.
        switch (item) {
          case '프로필':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
            break;
          case '알림 설정':
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NotificationSettingsPage()),
            );
            break;
          case '테마 설정':
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ThemeSettingsPage(themeNotifier: widget.themeNotifier)),
            );
            break;
          case '스트레칭 시간 설정':
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StretchTimeSettingsPage()),
            );
            break;
        }
      },
    );
  }
}

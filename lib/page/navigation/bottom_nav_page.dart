import 'package:belajar_flutter/page/navigation/fragment/fragment_dasboard.dart';
import 'package:belajar_flutter/page/navigation/fragment/fragment_notification.dart';
import 'package:belajar_flutter/page/navigation/fragment/fragment_setting.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _indexNav = 0;

  final List _fragment = [
    {
      'label': 'Dashboard',
      'icon_on': Icons.dashboard,
      'icon_off': Icons.dashboard_customize,
      'fragment': const DasboardFragment(),
    },
    {
      'label': 'Notification',
      'icon_on': Icons.notifications,
      'icon_off': Icons.notifications_none,
      'fragment': const NotificationFragment(),
    },
    {
      'label': 'Setting',
      'icon_on': Icons.settings,
      'icon_off': Icons.settings_applications,
      'fragment': const SettingFragment(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _fragment[_indexNav]['fragment'],
      bottomNavigationBar: _bottomNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  BottomNavigationBar _bottomNav() {
    return BottomNavigationBar(
      currentIndex: _indexNav,
      selectedFontSize: 12,
      backgroundColor: Colors.cyan[100],
      onTap: (value) {
        setState(() {
          _indexNav = value;
        });
      },
      items: _fragment.map((e) {
        return BottomNavigationBarItem(
          icon: Icon(e['icon_off']),
          activeIcon: Icon(e['icon_on']),
          label: e['label'] as String,
        );
      }).toList(),
    );
  }
}

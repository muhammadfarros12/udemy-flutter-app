import 'package:belajar_flutter/page/navigation/fragment/fragment_dasboard.dart';
import 'package:belajar_flutter/page/navigation/fragment/fragment_notification.dart';
import 'package:belajar_flutter/page/navigation/fragment/fragment_setting.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  final List _fragment = [
    {
      'title': 'Dashboard',
      'fragment': const DasboardFragment(),
    },
    {
      'title': 'Notification',
      'fragment': const NotificationFragment(),
    },
    {
      'title': 'Setting',
      'fragment': const SettingFragment(),
    },
  ];

  int _currentFragment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_fragment[_currentFragment]['title']),
        titleSpacing: 0,
      ),
      drawer: _drawer(context),
      body: _fragment[_currentFragment]['fragment'],
    );
  }

  Drawer _drawer(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: const BoxDecoration(color: Colors.amber),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'asset/image/photo.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Muhammad farroos',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 4),
                const Text('muhammadfarroos12@gmail.com',
                    style: TextStyle(color: Colors.white54)),
              ],
            )),
        ListTile(
          onTap: () {
            setState(() {
              _currentFragment = 0;
            });
            Navigator.pop(context);
          },
          title: const Text('Dashboard'),
          leading: const Icon(Icons.dashboard),
          trailing: const Icon(Icons.navigate_next),
        ),
        ListTile(
          onTap: () {
            setState(() {
              _currentFragment = 1;
            });
            Navigator.pop(context);
          },
          leading: const Icon(Icons.notifications),
          title: const Text('Navigation'),
          trailing: const Icon(Icons.navigate_next),
        ),
        ListTile(
          onTap: () {
            setState(() {
              _currentFragment = 2;
            });
            Navigator.pop(context);
          },
          leading: const Icon(Icons.settings),
          title: const Text('setting'),
          trailing: const Icon(Icons.navigate_next),
        ),
        const Divider(
          color: Colors.grey,
        ),
        ListTile(
          onTap: () => Navigator.pop(context),
          leading: const Icon(Icons.logout),
          title: const Text('Log Out'),
          trailing: const Icon(Icons.navigate_next),
        ),
      ],
    ));
  }
}

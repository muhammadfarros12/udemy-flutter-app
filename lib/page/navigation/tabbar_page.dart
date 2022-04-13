import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({Key? key}) : super(key: key);

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar Page'),
          titleSpacing: 0.0,
          bottom: const TabBar(indicatorColor: Colors.purple, tabs: [
            Tab(
              text: 'Payment',
              height: 78,
              icon: Icon(Icons.payment),
            ),
            Tab(
              text: 'History',
              icon: Icon(Icons.history),
            ),
            Tab(
              text: 'Entahlah',
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Payment'),
            ),
            Center(
              child: Text('History'),
            ),
            Center(
              child: Text('Entahlah'),
            ),
          ],
        ),
      ),
    );
  }
}

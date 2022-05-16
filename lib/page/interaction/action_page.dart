import 'package:flutter/material.dart';

class ActionPage extends StatelessWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Page'),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 30,
            width: 150,
            alignment: Alignment.center,
            child: const Text('Custom Button'),
          )
        ],
      ),
    );
  }
}

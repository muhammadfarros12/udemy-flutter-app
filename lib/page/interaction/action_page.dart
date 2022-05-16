// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ActionPage extends StatefulWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  State<ActionPage> createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  final List _fruits = [
    'semangka',
    'pisang',
    'anggur',
    'mangga',
    'durian',
    'kiwi',
    'melon',
    'buah naga',
    'sirsak',
    'jambu',
    'lemon',
    'nanas',
    'jambu batu',
    'kelengkeng',
    'pepaya'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Page'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            customButton(),
            ListView.builder(
                itemCount: _fruits.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(_fruits[index]),
                    background: Container(
                      color: Colors.amber[300],
                    ),
                    onDismissed: (direction) {
                      setState(() => _fruits.removeAt(index));
                    },
                    child: ListTile(
                      title: Text('${index + 1}. ' + _fruits[index]),
                    ),
                  );
                })
          ]),
        ),
      ),
    );
  }

  Material customButton() {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: Colors.amberAccent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.blue,
        onTap: () {
          print('custom button clicked');
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text('Custom Button'),
        ),
      ),
    );
  }
}

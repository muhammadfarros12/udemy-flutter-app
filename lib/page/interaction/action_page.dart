// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ActionPage extends StatefulWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  State<ActionPage> createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
  int boxQuantity = 0;

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
            const SizedBox(
              height: 16,
            ),
            ListTile(
              title: const Text('Dismisable'),
              tileColor: Colors.green[400],
            ),
            buildDismissable(),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              title: const Text('Draggable'),
              tileColor: Colors.green[400],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Draggable<int>(
                  data: 10,
                  child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.purple,
                      alignment: Alignment.center,
                      child: const Text('Box',
                          style: TextStyle(color: Colors.white))),
                  feedback: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              color: Colors.black45,
                              offset: Offset.zero),
                        ],
                        color: Colors.purple,
                      ),
                      alignment: Alignment.center,
                      child: const Text('Box',
                          style: TextStyle(color: Colors.white, fontSize: 14))),
                  childWhenDragging: Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  ),
                ),
                DragTarget<int>(
                  builder: (context, candidateData, rejectedData) {
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.amber[300],
                      alignment: Alignment.center,
                      child: Text(
                        'Data Receive :\n $boxQuantity',
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  onAccept: (int data) {
                    setState(() {
                      boxQuantity += data;
                    });
                  },
                )
              ],
            )
          ]),
        ),
      ),
    );
  }

  ListView buildDismissable() {
    return ListView.builder(
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
        });
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

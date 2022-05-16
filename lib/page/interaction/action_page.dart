// ignore_for_file: avoid_print

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Material(
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
                  child: Text('Custom Button dscv erklbvgt bjtr bkfjebntl'),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

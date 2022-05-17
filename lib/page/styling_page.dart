import 'dart:ui';

import 'package:flutter/material.dart';

class StylingPage extends StatelessWidget {
  const StylingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Styling page'),
        titleSpacing: 0,
      ),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        ListTile(
          title: const Text('opacity'),
          tileColor: Colors.grey[200],
        ),
        Center(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
          ),
        ),
        ListTile(
          title: const Text('BackDropFilter'),
          tileColor: Colors.grey[200],
        ),
        Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Stack(children: [
              Text('0' * 500),
              Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      child: const Text('Hello world'),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        ListTile(
          title: const Text('RotateBox'),
          tileColor: Colors.grey[200],
        ),
        Center(
          child: RotatedBox(
            quarterTurns: 2,
            child: Container(
              alignment: Alignment.center,
              color: Colors.amber[300],
              width: 100,
              height: 30,
              child: const Text('Rotate Box'),
            ),
          ),
        ),
        ListTile(
          title: const Text('ClipRect'),
          tileColor: Colors.grey[200],
        ),
        ClipRect(
          child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 0.8,
              child: Image.asset('asset/image/animal/rubah.jpg')),
        ),
        ListTile(
          title: const Text('Clip Oval'),
          tileColor: Colors.grey[200],
        ),
        Center(
          child: ClipOval(
            child: Image.asset(
              'asset/image/animal/rubah.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ]),
    );
  }
}

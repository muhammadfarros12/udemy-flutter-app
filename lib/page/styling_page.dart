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
        )
      ]),
    );
  }
}

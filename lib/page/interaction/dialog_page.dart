import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void openSimpleDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Simple Dialog'),
            children: [
              SimpleDialogOption(
                child: const Text('Option A'),
                onPressed: () {
                  Navigator.pop(context, 'A');
                },
              ),
              SimpleDialogOption(
                child: const Text('Option B'),
                onPressed: () {
                  Navigator.pop(context, 'B');
                },
              ),
              SimpleDialogOption(
                child: const Text('Option C'),
                onPressed: () {
                  Navigator.pop(context, 'C');
                },
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Close'))
            ],
          );
        });
  }

  void openAboutDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AboutDialog(
            applicationIcon: Image.asset(
              'asset/image/photo.jpg',
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            applicationName: 'Belajar Flutter',
            applicationVersion: '1.2.1',
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
        titleSpacing: 0,
      ),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        ElevatedButton(
            onPressed: () => openSimpleDialog(),
            child: const Text('simple dialog')),
        ElevatedButton(
            onPressed: () => openAboutDialog(),
            child: const Text('About Dialog')),
      ]),
    );
  }
}

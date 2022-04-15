import 'package:flutter/material.dart';

class AlertNotifPage extends StatefulWidget {
  const AlertNotifPage({Key? key}) : super(key: key);

  @override
  State<AlertNotifPage> createState() => _AlertNotifPageState();
}

class _AlertNotifPageState extends State<AlertNotifPage> {
  void openSnacbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('success snackbar'),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.amberAccent,
      action: SnackBarAction(
        textColor: Colors.black26,
        label: 'Dismiss',
        onPressed: () {
          print('Action Execution');
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Notif Page'),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
              onPressed: () => openSnacbar(), child: const Text('Snackbar'))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertNotifPage extends StatefulWidget {
  const AlertNotifPage({Key? key}) : super(key: key);

  @override
  State<AlertNotifPage> createState() => _AlertNotifPageState();
}

class _AlertNotifPageState extends State<AlertNotifPage> {
  var Fluttertoast;

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

  void openToast() {
    Fluttertoast.showToast(
        msg: "This is a Toast Message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void openMaterialBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
        backgroundColor: Colors.amberAccent,
        content: const Text('There is an update, you want to update'),
        actions: [
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                print('update');
              },
              child: const Text('Update')),
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              },
              child: const Text('Dismiss'))
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              Future.delayed(const Duration(milliseconds: 800), () {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Alert Notif Page'),
        titleSpacing: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
              onPressed: () => openSnacbar(), child: const Text('Snackbar')),
          ElevatedButton(
              onPressed: () => openToast(), child: const Text('Toast')),
          ElevatedButton(
              onPressed: () => openMaterialBanner(),
              child: const Text('Material Banner')),
        ],
      ),
    );
  }
}

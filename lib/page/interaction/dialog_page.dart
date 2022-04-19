import 'package:flutter/cupertino.dart';
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

  void openAlertDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('Delete Item'),
            content: const Text('Apa kamu yakin akan menghapus ini?'),
            actions: [
              TextButton(onPressed: () {}, child: const Text('Ya')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('cancel delete');
                  },
                  child: const Text('Tidak')),
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

  void openCupertino() {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Delete Item'),
          content: const Text('Apa kamu yakin akan menghapus ini?'),
          actions: [
            CupertinoDialogAction(
              child: const Text('Ya'),
              onPressed: () {
                Navigator.pop(context);
                print('delete');
              },
            ),
            CupertinoDialogAction(
              child: const Text('Tidak'),
              onPressed: () {
                Navigator.pop(context);
                print('cancel delete');
              },
            ),
          ],
        );
      },
    );
  }

  void openPopUp() {
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(16, 300, 16, 200),
        items: const [
          PopupMenuItem(
            child: Text('Menu 1'),
            value: 'menu 1',
          ),
          PopupMenuItem(
            child: Text('Menu 2'),
            value: 'menu 2',
          ),
          PopupMenuItem(
            child: Text('Menu 3'),
            value: 'menu 3',
          ),
          PopupMenuItem(
            child: Text('Menu 4'),
            value: 'menu 4',
          ),
          PopupMenuItem(
            child: Text('Menu 5'),
            value: 'menu 5',
          ),
        ]);
  }

  void openbottomSheet(BuildContext ctx) {
    showBottomSheet(
        context: ctx,
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.greenAccent,
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Image.asset(
                'asset/image/photo.jpg',
                width: 150,
                height: 150,
              ),
              const Text('Ini adalah bottom sheet')
            ]),
          );
        });
  }

  void openModalBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 3,
                color: Colors.black,
                indent: 100,
                endIndent: 100,
              ),
              ListTile(
                title: const Text('Modal Bottom Sheet'),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.clear)),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    }),
              ),
            ],
          );
        },
        isDismissible: false,
        enableDrag: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )));
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
        ElevatedButton(
            onPressed: () => openAlertDialog(),
            child: const Text('Alert Dialog')),
        ElevatedButton(
            onPressed: () => openCupertino(),
            child: const Text('Cupertino Dialog')),
        ElevatedButton(
            onPressed: () => openPopUp(), child: const Text('pop up')),
        Builder(builder: (ctx) {
          return ElevatedButton(
              onPressed: () => openbottomSheet(ctx),
              child: const Text('Bottom Sheet'));
        }),
        ElevatedButton(
            onPressed: () => openModalBottomSheet(),
            child: const Text('Modal Bottom Sheet')),
      ]),
    );
  }
}

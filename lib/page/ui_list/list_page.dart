import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
        titleSpacing: 0,
      ),
      body: ListView(
        children: [
          const ListTile(
            tileColor: Colors.amber,
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('List Tile'),
            trailing: Icon(Icons.navigate_next),
            subtitle: Text('subtitle'),
          ),
          const ListTile(
            tileColor: Colors.blueGrey,
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('List Tile'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            tileColor: Colors.purple[300],
            leading: const CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.amberAccent,
              child: Icon(Icons.notification_add),
            ),
            title: const Text('List Tile'),
            trailing: const Icon(Icons.navigate_next),
            subtitle: const Text('subtitle'),
          ),
          ListTile(
            leading: const CircleAvatar(
              foregroundColor: Colors.black,
              child: Text('1'),
            ),
            title: const Text('List Tile'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
          const Divider(
            color: Colors.blue,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
          ListTile(
            leading: const CircleAvatar(
              foregroundColor: Colors.black,
              child: Text('2'),
            ),
            title: const Text('List Tile'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

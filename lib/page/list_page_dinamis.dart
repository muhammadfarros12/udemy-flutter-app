import 'package:flutter/material.dart';

class ListPageDinamis extends StatefulWidget {
  const ListPageDinamis({Key? key}) : super(key: key);

  @override
  State<ListPageDinamis> createState() => _ListPageDinamisState();
}

class _ListPageDinamisState extends State<ListPageDinamis> {
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
        title: Text('List Page Dinamis'),
        titleSpacing: 0,
      ),
      body: ListView.builder(
        itemCount: _fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(_fruits[index]),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.red),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

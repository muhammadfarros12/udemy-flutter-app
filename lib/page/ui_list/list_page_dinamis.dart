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

  void addItem() {
    _fruits.add('Buah');
    setState(() {});
  }

  void deleteItem(int indexItem) {
    _fruits.removeAt(indexItem);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page Dinamis'),
        titleSpacing: 0,
      ),
      body: Scrollbar(
        // listView.builder digunakan ketika kita ingin membuat list secara dinamis,
        // jika hanya menggunakan ListView saja, maka kita akan membuat list satu persatu
        // ListView.separated dapat digunakan ketika kita ingin membuat pembatas didalam list tersebut
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            indent: 20,
            height: 10,
            endIndent: 10,
            color: Colors.amber,
          ),
          itemCount: _fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(_fruits[index]),
              trailing: IconButton(
                onPressed: () => deleteItem(index),
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addItem(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

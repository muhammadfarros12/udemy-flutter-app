import 'package:flutter/material.dart';

class ReorderList extends StatefulWidget {
  const ReorderList({Key? key}) : super(key: key);

  @override
  State<ReorderList> createState() => _ReorderListState();
}

class _ReorderListState extends State<ReorderList> {
  final List _category = [
    'drama',
    'action',
    'Sci-fi',
    'fantasy',
    'comedy',
    'horror',
    'adventure',
    'thriller'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorder List Page'),
        titleSpacing: 0,
      ),
      body: ReorderableListView.builder(
        itemCount: _category.length,
        onReorder: (oldIndex, newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          String itemRemove = _category.removeAt(oldIndex);
          _category.insert(newIndex, itemRemove);
          setState(() {});
        },
        itemBuilder: (context, index) {
          return ListTile(
            key: Key('$index'),
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(_category[index]),
            trailing: const Icon(Icons.reorder),
          );
        },
      ),
    );
  }
}

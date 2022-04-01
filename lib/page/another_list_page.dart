import 'package:flutter/material.dart';

class AnotherListPage extends StatefulWidget {
  AnotherListPage({Key? key}) : super(key: key);

  @override
  State<AnotherListPage> createState() => _AnotherListPageState();
}

class _AnotherListPageState extends State<AnotherListPage> {
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

  void deleteChip(int index) {
    _category.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another List Page'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Wrap(
                spacing: 16,
                children: List.generate(_category.length, (index) {
                  return Chip(
                    backgroundColor: Colors.blue[100],
                    avatar: CircleAvatar(child: Text('${index + 1}')),
                    label: Text(_category[index]),
                    deleteIcon: const Icon(Icons.clear),
                    onDeleted: () => deleteChip(index),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

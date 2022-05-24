import 'package:belajar_flutter/db/db_animal.dart';
import 'package:flutter/material.dart';

import '../../model/animal.dart';

class BookmarkAnimalPage extends StatefulWidget {
  const BookmarkAnimalPage({Key? key}) : super(key: key);

  @override
  State<BookmarkAnimalPage> createState() => _BookmarkAnimalPageState();
}

class _BookmarkAnimalPageState extends State<BookmarkAnimalPage> {
  List<Animal> _listAnimal = [];

  void getListAnimal() async {
    _listAnimal.clear();
    _listAnimal = await DbAnimal().getAllAnimal();
    setState(() {});
  }

  @override
  void initState() {
    getListAnimal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark Animal Page'),
        titleSpacing: 0,
      ),
      body: _listAnimal.isNotEmpty
          ? ListView.separated(
              itemBuilder: (context, index) {
                Animal animal = _listAnimal[index];
                return ListTile(
                  title: Text(animal.name),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                );
              },
              itemCount: _listAnimal.length)
          : const Center(child: Text('Empty')),
    );
  }
}

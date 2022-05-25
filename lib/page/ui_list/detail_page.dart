// ignore_for_file: avoid_print

import 'package:belajar_flutter/db/db_animal.dart';
import 'package:belajar_flutter/model/animal.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Animal hewan;

  const DetailPage({Key? key, required this.hewan}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isBookmarked = false;

  void checkAnimal() async {
    print('checkAnimal');
    _isBookmarked = await DbAnimal().checkAnimal(widget.hewan.name);
    setState(() {});
  }

  void addBookmarkAnimal() {
    print('addBookmarkAnimal');
    DbAnimal().insertAnimal(widget.hewan);
    checkAnimal();
  }

  void deleteBookmarkAnimal() {
    print('deleteBookmarkAnimal');
    DbAnimal().deleteWhereName(widget.hewan.name);
    checkAnimal();
  }

  @override
  void initState() {
    checkAnimal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        titleSpacing: 0,
        actions: [
          IconButton(
              onPressed: () {
                _isBookmarked = !_isBookmarked;
                if (_isBookmarked) {
                  addBookmarkAnimal();
                } else {
                  deleteBookmarkAnimal();
                }
              },
              icon: Icon(
                _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
              )),
        ],
      ),
      body: ListView(
        children: [
          Hero(
            tag: widget.hewan.image + 'from_grid_to_detail',
            child: Image.asset(
              widget.hewan.image,
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.hewan.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(
                  height: 8,
                ),
                Text(widget.hewan.move),
                const SizedBox(
                  height: 5,
                ),
                Text('${widget.hewan.weight} Kg'),
              ],
            ),
          ),
          SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: animal.length,
                itemBuilder: (context, index) {
                  Animal hAnimal = animal[index];
                  return item(hAnimal, index);
                },
              ))
        ],
      ),
    );
  }

  Widget item(Animal hAnimal, int index) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          boxShadow: const [
            BoxShadow(
                offset: Offset(5, 6), blurRadius: 6, color: Colors.black45)
          ]),
      width: 120,
      margin: EdgeInsets.fromLTRB(
          index == 0 ? 16 : 8, 16, index == animal.length - 1 ? 16 : 8, 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          hAnimal.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

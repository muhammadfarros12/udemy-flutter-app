import 'package:belajar_flutter/model/animal.dart';
import 'package:belajar_flutter/page/detail_page.dart';
import 'package:flutter/material.dart';

class ListPageModel extends StatelessWidget {
  const ListPageModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page Model'),
        titleSpacing: 0,
      ),
      body: ListView.builder(
        itemCount: animal.length,
        itemBuilder: (context, index) {
          Animal hewan = animal[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(hewan: hewan)));
              },
              child: itemAnimal(hewan, index));
        },
      ),
    );
  }

  Widget itemAnimal(Animal animals, int index) {
    return Card(
      margin: EdgeInsets.fromLTRB(
          16, index == 0 ? 16 : 8, 16, index == animal.length - 1 ? 16 : 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
            child: Image.asset(
              animals.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(animals.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(
                  height: 5,
                ),
                Text(animals.move)
              ],
            ),
          ),
          const Icon(Icons.navigate_next),
          const SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}

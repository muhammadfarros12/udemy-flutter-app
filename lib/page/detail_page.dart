import 'package:belajar_flutter/model/animal.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Animal hewan;

  const DetailPage({Key? key, required this.hewan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        titleSpacing: 0,
      ),
      body: ListView(
        children: [
          Image.asset(
            hewan.image,
            fit: BoxFit.cover,
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(hewan.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(
                  height: 8,
                ),
                Text(hewan.move),
                const SizedBox(
                  height: 5,
                ),
                Text('${hewan.weight} Kg'),
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
          boxShadow: [
            const BoxShadow(
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

import 'package:belajar_flutter/model/animal.dart';
import 'package:belajar_flutter/page/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Page'),
        titleSpacing: 0,
      ),
      body: GridView.builder(
          itemCount: animal.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 2
                      : 3,
              childAspectRatio: 1,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4),
          itemBuilder: (context, index) {
            Animal hewan = animal[index];
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(hewan: hewan)));
                },
                child: itemGrid(hewan));
          }),
    );
  }

  Stack itemGrid(Animal hewan) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Hero(
          tag: hewan.image + 'from_grid_to_detail',
          child: Image.asset(
            hewan.image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.black.withOpacity(0.5),
              child: Text(
                hewan.name,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )),
        ),
        Positioned(
            top: 2,
            right: 2,
            child: FloatingActionButton(
              heroTag: hewan.image,
              mini: true,
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              backgroundColor: Colors.white,
              onPressed: () {},
            ))
      ],
    );
  }
}

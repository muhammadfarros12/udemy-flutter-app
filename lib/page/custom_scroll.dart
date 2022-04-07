import 'package:flutter/material.dart';

class CustomScrollPage extends StatelessWidget {
  const CustomScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Custom Scroll Page'),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(((context, index) {
              return Container(
                  color: Colors.blue[100],
                  alignment: Alignment.center,
                  child: Text('Grid Item $index'));
            }), childCount: 30),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 4,
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(((context, index) {
                return Container(
                    color: Colors.amber[100],
                    alignment: Alignment.center,
                    child: Text('Grid Item $index'));
              }), childCount: 30),
              itemExtent: 50)
        ],
      ),
    );
  }
}

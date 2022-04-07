import 'package:flutter/material.dart';

class DragScrollPage extends StatelessWidget {
  const DragScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag Scroll Page'),
      ),
      body: Stack(
        children: [
          Center(child: Image.asset('asset/image/animal/rusa.jpg')),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(30))),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('Item $index'));
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

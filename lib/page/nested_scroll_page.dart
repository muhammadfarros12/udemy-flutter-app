import 'package:belajar_flutter/model/animal.dart';
import 'package:flutter/material.dart';

class NestedScrollPage extends StatelessWidget {
  const NestedScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = <String>['Tab 1', 'Tab 2'];
    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    title: const Text('Nested Scroll Page'),
                    pinned: true,
                    expandedHeight: 150,
                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                      tabs: _tabs.map((element) => Tab(text: element)).toList(),
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(
                children: _tabs.map((element) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    return CustomScrollView(
                      key: PageStorageKey(element),
                      slivers: [
                        SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context)),
                        SliverPadding(
                          padding: const EdgeInsets.all(8),
                          sliver: SliverFixedExtentList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  Animal hewan = animal[index];
                                  return ListTile(
                                    leading: CircleAvatar(
                                        child: Text('${index + 1}')),
                                    title: Text(hewan.name),
                                  );
                                },
                                childCount: animal.length,
                              ),
                              itemExtent: 48),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList()),
          ),
        ));
  }
}

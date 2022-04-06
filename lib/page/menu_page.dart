import 'package:belajar_flutter/page/another_list_page.dart';
import 'package:belajar_flutter/page/article_page.dart';
import 'package:belajar_flutter/page/expansion_list_page.dart';
import 'package:belajar_flutter/page/grid_page.dart';
import 'package:belajar_flutter/page/list_page.dart';
import 'package:belajar_flutter/page/list_page_dinamis.dart';
import 'package:belajar_flutter/page/list_page_model.dart';
import 'package:belajar_flutter/page/reorderlist_page.dart';
import 'package:belajar_flutter/page/responsive_space_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ArticlePage()));
                },
                child: const Text(
                  'Article',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListPage()));
                },
                child: const Text(
                  'List Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListPageDinamis()));
                },
                child: const Text(
                  'List Page Dinamis',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListPageModel()));
                },
                child: const Text(
                  'List Page Model',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GridPage()));
                },
                child: const Text(
                  'Grid Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResponsiveSpacePage()));
                },
                child: const Text(
                  'Responsive Space Layout',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnotherListPage()));
                },
                child: const Text(
                  'Another List Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReorderList()));
                },
                child: const Text(
                  'Reorder List Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExpansionListPage()));
                },
                child: const Text(
                  'Expansion List Page',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

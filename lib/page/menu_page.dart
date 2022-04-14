import 'package:belajar_flutter/page/another_list_page.dart';
import 'package:belajar_flutter/page/article_page.dart';
import 'package:belajar_flutter/page/custom_scroll.dart';
import 'package:belajar_flutter/page/data_table_page.dart';
import 'package:belajar_flutter/page/drag_scroll_page.dart';
import 'package:belajar_flutter/page/expansion_list_page.dart';
import 'package:belajar_flutter/page/grid_page.dart';
import 'package:belajar_flutter/page/list_page.dart';
import 'package:belajar_flutter/page/list_page_dinamis.dart';
import 'package:belajar_flutter/page/list_page_model.dart';
import 'package:belajar_flutter/page/navigation/bottom_nav_page.dart';
import 'package:belajar_flutter/page/navigation/drawer_page.dart';
import 'package:belajar_flutter/page/navigation/tabbar_page.dart';
import 'package:belajar_flutter/page/nested_scroll_page.dart';
import 'package:belajar_flutter/page/reorderlist_page.dart';
import 'package:belajar_flutter/page/responsive_space_page.dart';
import 'package:belajar_flutter/page/table_page.dart';
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TablePage()));
                },
                child: const Text(
                  'Table Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataTablePage()));
                },
                child: const Text(
                  'Data Table Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomScrollPage()));
                },
                child: const Text(
                  'Custom Scroll Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DragScrollPage()));
                },
                child: const Text(
                  'Drag Scroll Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NestedScrollPage()));
                },
                child: const Text(
                  'Nested Scroll Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DrawerPage()));
                },
                child: const Text(
                  'Drawer Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabbarPage()));
                },
                child: const Text(
                  'Tab Bar Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavPage()));
                },
                child: const Text(
                  'Bottom Nav Page',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

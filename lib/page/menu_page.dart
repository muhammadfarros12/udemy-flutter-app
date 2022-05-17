import 'package:belajar_flutter/page/interaction/action_page.dart';
import 'package:belajar_flutter/page/interaction/alert_notif_page.dart';
import 'package:belajar_flutter/page/interaction/dialog_page.dart';
import 'package:belajar_flutter/page/interaction/input_page.dart';
import 'package:belajar_flutter/page/interaction/picker_page.dart';
import 'package:belajar_flutter/page/navigation/bottom_nav_page.dart';
import 'package:belajar_flutter/page/navigation/drawer_page.dart';
import 'package:belajar_flutter/page/navigation/tabbar_page.dart';
import 'package:belajar_flutter/page/styling_page.dart';
import 'package:flutter/material.dart';
import 'ui_list/another_list_page.dart';
import 'ui_list/article_page.dart';
import 'ui_list/custom_scroll.dart';
import 'ui_list/data_table_page.dart';
import 'ui_list/drag_scroll_page.dart';
import 'ui_list/expansion_list_page.dart';
import 'ui_list/grid_page.dart';
import 'ui_list/list_page.dart';
import 'ui_list/list_page_dinamis.dart';
import 'ui_list/list_page_model.dart';
import 'ui_list/nested_scroll_page.dart';
import 'ui_list/reorderlist_page.dart';
import 'ui_list/responsive_space_page.dart';
import 'ui_list/table_page.dart';

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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InputPage()));
                },
                child: const Text(
                  'Input Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlertNotifPage()));
                },
                child: const Text(
                  'Alert Notification Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DialogPage()));
                },
                child: const Text(
                  'Dialog Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PickerPage()));
                },
                child: const Text(
                  'Picker Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ActionPage()));
                },
                child: const Text(
                  'Action Page',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StylingPage()));
                },
                child: const Text(
                  'Styling Page',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:belajar_flutter/page/article_page.dart';
import 'package:belajar_flutter/page/list_page.dart';
import 'package:belajar_flutter/page/list_page_dinamis.dart';
import 'package:belajar_flutter/page/list_page_model.dart';
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListPageModel()));
                },
                child: const Text(
                  'List Page Model',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

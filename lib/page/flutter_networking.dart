// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/post.dart';

class FlutterNetworkPage extends StatefulWidget {
  const FlutterNetworkPage({Key? key}) : super(key: key);

  @override
  State<FlutterNetworkPage> createState() => _FlutterNetworkPageState();
}

class _FlutterNetworkPageState extends State<FlutterNetworkPage> {
  Map? post;
  List<Post> listPost = [];

  void getData() async {
    String url = 'https://jsonplaceholder.typicode.com/posts/1';
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        Map responseBody = jsonDecode(response.body);
        post = responseBody;
      }
    } catch (e) {
      print(e);
    }
    setState(() {});
  }

  void getListPost() async {
    String url = 'https://jsonplaceholder.typicode.com/posts';
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(response.body);
        List responseBody = jsonDecode(response.body);
        for (var itemPost in responseBody) {
          listPost.add(Post.fromJson(itemPost));
        }
      }
    } catch (e) {
      print(e);
    }
    setState(() {});
  }

  @override
  void initState() {
    getData();
    getListPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Networking'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text('Fetch Single Data'),
              tileColor: Colors.grey[300],
            ),
            if (post != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Id : ${post!["userId"]}"),
                    Text("ID : ${post!["id"]}"),
                    Text("Title : ${post!["title"]}"),
                    Text("Body : ${post!["body"]}"),
                  ],
                ),
              ),
            ListTile(
              title: const Text('Fetch multi Data'),
              tileColor: Colors.grey[300],
            ),
            if (listPost.isNotEmpty)
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  thickness: 1,
                ),
                itemCount: listPost.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        child: Text(listPost[index].id.toString())),
                    title: Text(listPost[index].title ?? ''),
                    subtitle: Text(listPost[index].body ?? ''),
                  );
                },
              )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DasboardFragment extends StatelessWidget {
  const DasboardFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: Text('Fragment Dashboard'),
      ),
    );
  }
}

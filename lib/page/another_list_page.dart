import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnotherListPage extends StatefulWidget {
  AnotherListPage({Key? key}) : super(key: key);

  @override
  State<AnotherListPage> createState() => _AnotherListPageState();
}

class _AnotherListPageState extends State<AnotherListPage> {
  final List _category = [
    'drama',
    'action',
    'Sci-fi',
    'fantasy',
    'comedy',
    'horror',
    'adventure',
    'thriller'
  ];

  final List<Map> _listStep = [
    {'title': 'Order', 'content': 'Make your order here'},
    {'title': 'Payment', 'content': 'Here payment can you use'},
    {'title': 'Send', 'content': 'Your order on the way'},
    {'title': 'Arrive', 'content': 'Your Order has arrived'},
  ];

  int _currentStep = 0;

  void deleteChip(int index) {
    _category.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another List Page'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Wrap(
                spacing: 16,
                children: List.generate(_category.length, (index) {
                  return Chip(
                    backgroundColor: Colors.blue[100],
                    avatar: CircleAvatar(child: Text('${index + 1}')),
                    label: Text(_category[index]),
                    deleteIcon: const Icon(Icons.clear),
                    onDeleted: () => deleteChip(index),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: _category.map((category) {
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.all(16),
                      color: Colors.white,
                      child: Center(child: Text(category)),
                    );
                  }).toList()),
            ),
            const SizedBox(height: 20),
            Stepper(
                physics: const NeverScrollableScrollPhysics(),
                onStepContinue: () {
                  if (_currentStep < _listStep.length - 1) {
                    setState(() => _currentStep += 1);
                  }
                },
                onStepCancel: () {
                  if (_currentStep > 0) {
                    setState(() => _currentStep -= 1);
                  }
                },
                onStepTapped: (value) => setState(() => _currentStep = value),
                currentStep: _currentStep,
                steps: List.generate(_listStep.length, (index) {
                  Map itemStep = _listStep[index];
                  return Step(
                      title: Text(itemStep['title']),
                      content: Container(
                        padding: const EdgeInsets.all(8),
                        width: double.maxFinite,
                        height: 50,
                        color: Colors.amber[100],
                        child: Text(itemStep['content']),
                      ),
                      isActive: _currentStep == index ? true : false);
                })
                // _listStep.map((e) {
                //   return Step(
                //       title: Text(e['title']),
                //       content: Container(
                //         padding: EdgeInsets.all(8),
                //         width: double.maxFinite,
                //         height: 50,
                //         color: Colors.amber[100],
                //         child: Text(e['content']),
                //       ),
                //       isActive: true
                //       );
                // }).toList()
                )
          ],
        ),
      ),
    );
  }
}

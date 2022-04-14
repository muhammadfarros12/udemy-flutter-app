import 'package:flutter/material.dart';

class AnotherListPage extends StatefulWidget {
  const AnotherListPage({Key? key}) : super(key: key);

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
  int _currentStack = 0;

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
            _wrap(),
            _pageView(),
            const SizedBox(height: 20),
            _stepper(),
            _indexedStack(),
            _buttonCounterStack()
          ],
        ),
      ),
    );
  }

  Row _buttonCounterStack() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            if (_currentStack > 0) {
              setState(() => _currentStack -= 1);
            }
          },
          child: const Text('Minus 1'),
        ),
        const SizedBox(
          width: 16,
        ),
        Text('Layer $_currentStack'),
        const SizedBox(
          width: 16,
        ),
        ElevatedButton(
          onPressed: () {
            if (_currentStack < _listStep.length - 1) {
              setState(() => _currentStack += 1);
            }
          },
          child: const Text('Plus 1'),
        ),
      ],
    );
  }

  IndexedStack _indexedStack() {
    return IndexedStack(
      index: _currentStack,
      children: List.generate(_listStep.length, (index) {
        Map itemStack = _listStep[index];
        return Card(
          margin: const EdgeInsets.all(16),
          elevation: 4,
          child: Container(
              height: 200,
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              color: Colors.blue[100],
              child: Column(
                children: [
                  Text(
                    itemStack['title'],
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 8),
                  Text(itemStack['content']),
                ],
              )),
        );
      }),
    );
  }

  Stepper _stepper() {
    return Stepper(
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
        );
  }

  SizedBox _pageView() {
    return SizedBox(
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
    );
  }

  Padding _wrap() {
    return Padding(
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
    );
  }
}

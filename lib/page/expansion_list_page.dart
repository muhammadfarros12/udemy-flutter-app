import 'package:flutter/material.dart';

class ExpansionListPage extends StatefulWidget {
  const ExpansionListPage({Key? key}) : super(key: key);

  @override
  State<ExpansionListPage> createState() => _ExpansionListPageState();
}

class _ExpansionListPageState extends State<ExpansionListPage> {
  final List<Map> _listPanel = [
    {'title': 'Order', 'content': 'Make your order here'},
    {'title': 'Payment', 'content': 'Here payment can you use'},
    {'title': 'Send', 'content': 'Your order on the way'},
    {'title': 'Arrive', 'content': 'Your Order has arrived'},
  ];

  final List<bool> _listExpanded = [];

  void setListExpanded() {
    _listExpanded.clear();
    for (var element in _listPanel) {
      _listExpanded.add(false);
    }
  }

  @override
  void initState() {
    setListExpanded();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded List Page'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  _listExpanded[panelIndex] = !_listExpanded[panelIndex];
                  setState(() {});
                },
                children: List.generate(_listPanel.length, (index) {
                  var item = _listPanel[index];
                  return ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(title: Text(item['title']));
                      },
                      body: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: Colors.blue[100],
                        padding: const EdgeInsets.all(8),
                        child: Text(item['content']),
                      ),
                      isExpanded: _listExpanded[index]);
                })),
          ],
        ),
      ),
    );
  }
}

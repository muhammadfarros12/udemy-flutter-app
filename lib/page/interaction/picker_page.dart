import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({Key? key}) : super(key: key);

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  void getDate() async {
    DateTime? result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(DateTime.now().year + 1));
    if (result != null) {
      print(result.toString());
      DateFormat dateFormat = DateFormat('dd-MM-yyyy');
      String date = dateFormat.format(result);
      print('Date: $date');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picker Page'),
        titleSpacing: 0,
      ),
      body: ListView(padding: const EdgeInsets.all(8), children: [
        ElevatedButton(
            onPressed: () => getDate(), child: const Text('Date Picker'))
      ]),
    );
  }
}

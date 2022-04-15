// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _textEditingController = TextEditingController();
  final _controllerUsername = TextEditingController();
  final _controllerPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String _gender = 'Laki - laki';

  bool rememberMe = false;

  final List<String> _days = [
    'sunday',
    'monday',
    'thursday',
    'friday',
    'saturday'
  ];

  final List<String> _selectedDays = [];

  bool _darkMode = false;

  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Page'),
        titleSpacing: 0,
      ),
      body: ListView(children: [
        const ListTile(title: Text('TextField')),
        _textInput(),
        const ListTile(title: Text('TextFormField')),
        _textFormField(),
        const ListTile(title: Text('Radio Button')),
        _radioButton(),
        const ListTile(title: Text('CheckBox')),
        _checkBox(),
        const ListTile(title: Text('Switch')),
        _switch(),
        const ListTile(title: Text('Slider')),
        _slider()
      ]),
    );
  }

  Slider _slider() {
    return Slider(
        value: _sliderValue,
        min: 0,
        max: 10,
        label: '$_sliderValue',
        divisions: 20,
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
          });
          print(value);
        });
  }

  ListTile _switch() {
    return ListTile(
      title: const Text('Dark Mode'),
      onTap: () => setState(() {
        _darkMode = !_darkMode;
      }),
      trailing: Switch(
          value: _darkMode,
          onChanged: (value) => setState(() {
                _darkMode = value;
              })),
    );
  }

  Column _checkBox() {
    return Column(
      children: [
        ListTile(
          onTap: () => setState(() {
            rememberMe = !rememberMe;
          }),
          leading: Checkbox(
            value: rememberMe,
            onChanged: (value) => setState(() {
              rememberMe = value!;
            }),
          ),
          title: const Text('remember me'),
        ),
        const SizedBox(height: 16),
        Column(
          children: List.generate(_days.length, (index) {
            String days = _days[index];
            return CheckboxListTile(
                title: Text(days),
                value: _selectedDays.contains(days),
                onChanged: (value) {
                  if (value!) {
                    _selectedDays.add(days);
                  } else {
                    _selectedDays.remove(days);
                  }
                  setState(() {});
                  print(_selectedDays);
                });
          }),
        )
      ],
    );
  }

  Column _radioButton() {
    return Column(
      children: [
        ListTile(
          onTap: () {
            setState(() {
              _gender = 'laki - laki';
            });
          },
          leading: Radio(
            value: 'laki - laki',
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value.toString();
              });
            },
          ),
          title: const Text('Laki - laki'),
        ),
        ListTile(
          onTap: () {
            setState(() {
              _gender = 'Perempuan';
            });
          },
          leading: Radio(
            value: 'Perempuan',
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value.toString();
              });
            },
          ),
          title: const Text('Perempuan'),
        ),
      ],
    );
  }

  Padding _textFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Username'),
              validator: (value) => value == '' ? 'Don\'t Empty Field' : null,
              controller: _controllerUsername,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (value) => value == '' ? 'Don\'t Empty Field' : null,
              controller: _controllerPassword,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(_controllerUsername.text);
                    print(_controllerPassword.text);
                  }
                },
                child: const Text('Submit Text Field'))
          ],
        ),
      ),
    );
  }

  Padding _textInput() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _textEditingController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent)),
              labelText: 'Name test',
              hintText: 'Hint Text',
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                labelText: 'Password',
                hintText: 'Input Your Password',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.vpn_key),
                suffixIcon: Icon(Icons.visibility)),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                labelText: 'Password',
                hintText: 'Input Your Password',
                labelStyle: const TextStyle(color: Colors.black),
                prefixIcon: const Icon(Icons.vpn_key),
                suffixIcon: const Icon(Icons.visibility),
                filled: true,
                fillColor: Colors.amber[100]),
          ),
          ElevatedButton(
              onPressed: () {
                print(_textEditingController.text);
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}

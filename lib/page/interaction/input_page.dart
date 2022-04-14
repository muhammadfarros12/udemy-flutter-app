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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: (value) =>
                      value == '' ? 'Don\'t Empty Field' : null,
                  controller: _controllerUsername,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: (value) =>
                      value == '' ? 'Don\'t Empty Field' : null,
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
        )
      ]),
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

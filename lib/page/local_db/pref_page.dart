import 'package:flutter/material.dart';

import '../../db/pref.dart';

class PrefPage extends StatefulWidget {
  const PrefPage({Key? key}) : super(key: key);

  @override
  State<PrefPage> createState() => _PrefPageState();
}

class _PrefPageState extends State<PrefPage> {
  String? _name;
  double? _height;
  bool? _likeSport;

  void getData() async {
    _name = await Pref.getName();
    _height = await Pref.getHeight();
    _likeSport = await Pref.getSport();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preference Page'),
        titleSpacing: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Name'),
            subtitle: Text(_name ?? 'kosong'),
          ),
          const Divider(thickness: 1, height: 1),
          ListTile(
            title: const Text('Height'),
            subtitle: Text(_height != null ? '$_height' : 'kosong'),
          ),
          const Divider(thickness: 1, height: 1),
          ListTile(
            title: const Text('Like Sport'),
            subtitle: Text(_likeSport != null ? '$_likeSport' : 'kosong'),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: () {
                  Pref.saveName('joko');
                  Pref.saveHeight(170);
                  Pref.saveSport(true);
                  getData();
                },
                child: const Text('Input & Save')),
          )
        ],
      ),
    );
  }
}

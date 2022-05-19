import 'package:shared_preferences/shared_preferences.dart';

class Pref {
  static void saveName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  static void saveHeight(double height) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('height', height);
  }

  static void saveSport(bool likeSport) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('sport', likeSport);
  }

  // fungsi untuk get data dari local
  static Future<String?> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }

  static Future<double?> getHeight() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble('height');
  }

  static Future<bool?> getSport() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('sport');
  }
}

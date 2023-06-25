import 'package:shared_preferences/shared_preferences.dart';

dynamic prefs;
dynamic favorite;
dynamic can;

void initPrefs() async {
  prefs = await SharedPreferences.getInstance();
  favorite = prefs.getStringList('favorite');
  can = prefs.getStringList('can');
  if (favorite == null) {
    prefs.setStringList('favorite', <String>[]);
    favorite = [];
  }
  if (can == null) {
    prefs.setStringList('can', <String>[]);
    can = [];
  }
}
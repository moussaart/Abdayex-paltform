import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class LocaliztionProvider with ChangeNotifier {
  String _locale = "en";

  String get locale => _locale;

  set locale(String locale) {
    _locale = locale;
    notifyListeners();
  }

  void togglelocale(int i) {
    List<String> L = ["en", 'fr', "ar"];
    // Check if the current theme is light, if yes, switch to dark; and vice versa
    locale = L[i - 1];
  }
}

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData temaactual;

  ThemeProvider({
    required bool isDarkMode,
  }) : temaactual = isDarkMode ? ThemeData.dark() : ThemeData.light();

  setlightMode() {
    temaactual = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    temaactual = ThemeData.dark();
    notifyListeners();
  }
}
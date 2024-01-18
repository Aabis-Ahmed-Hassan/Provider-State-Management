import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class DarkModeClass with ChangeNotifier {

  var _themeMode = ThemeMode.light;

  ThemeMode get getThemeMode => _themeMode;

  void setThemeMode(inputThemeMode) {
    _themeMode = inputThemeMode;
    notifyListeners();
  }
}





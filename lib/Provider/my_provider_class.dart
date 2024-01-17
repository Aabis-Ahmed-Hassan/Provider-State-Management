import 'package:flutter/foundation.dart';

class MyProviderClass with ChangeNotifier{

  int _x = 0;
  int get getX => _x;
  void setX() {
    _x++;
    notifyListeners();
  }




}
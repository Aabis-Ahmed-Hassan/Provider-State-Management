import 'package:flutter/foundation.dart';

class MyProviderClass with ChangeNotifier{

  int x = 0;
  int get getX => x;
  void setX() {
    x++;
    notifyListeners();
  }




}
import 'package:flutter/foundation.dart';

class MySliderClass with ChangeNotifier {


  double value = 1.0;
  double get getValue => value;


  void setValue (double valueToSet) {
    value = valueToSet;
    notifyListeners();
  }



}
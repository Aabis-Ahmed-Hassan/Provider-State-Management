import 'package:flutter/foundation.dart';

class MySliderClass with ChangeNotifier {


  double _value = 1.0;
  double get getValue => _value;


  void setValue (double valueToSet) {
    _value = valueToSet;
    notifyListeners();
  }



}
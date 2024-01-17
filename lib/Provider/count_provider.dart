import 'package:flutter/foundation.dart';


class CountClass with ChangeNotifier{

  int _countVariable = 0;
  int get countGetter => _countVariable;




  void setCount() {

    _countVariable++;
    notifyListeners();
  }


}
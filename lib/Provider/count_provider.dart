import 'package:flutter/foundation.dart';


class CountClass with ChangeNotifier{

  int countVariable = 0;
  int get countGetter => countVariable;




  void setCount() {

    countVariable++;
    notifyListeners();
  }


}
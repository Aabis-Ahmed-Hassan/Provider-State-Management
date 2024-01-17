import 'package:flutter/foundation.dart';

class FavouriteClass with ChangeNotifier {
  List<int> _wishlistItems = [];

  List<int> get getWishlistItems => _wishlistItems;

  void addItem(int value) {
    _wishlistItems.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    
    
    _wishlistItems.remove(value);
    

    notifyListeners();
  }
}

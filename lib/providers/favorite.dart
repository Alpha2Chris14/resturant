import 'package:flutter/cupertino.dart';

class Favorite with ChangeNotifier {
  final favoriteItem = [];

  addToFavourite(value) {
    favoriteItem.add(value);
    notifyListeners();
  }
}

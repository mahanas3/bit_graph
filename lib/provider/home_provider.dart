import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  //get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
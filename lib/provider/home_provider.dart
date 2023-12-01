import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<bool> checkboxStates = List.generate(3, (index) => false);

  void toggleCheckbox(int index) {
    checkboxStates[index] = !checkboxStates[index];
    notifyListeners();
  }

  void dashBoard(BuildContext context) {
    Navigator.pushNamed(context, '/dashBoard');
    notifyListeners();
  }
}

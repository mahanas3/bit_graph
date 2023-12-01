import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier {

  List<bool> checkboxStates = List.generate(3, (index) => false);

  void dashBoard(BuildContext context){
    Navigator.pushNamed(context, '/dashBoard');
    notifyListeners();
  }

  void toggleCheckbox(int index) {
    checkboxStates[index] = !checkboxStates[index];
    notifyListeners();
  }
}
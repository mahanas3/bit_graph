import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier {
  void dashBoard(BuildContext context){
    Navigator.pushNamed(context, '/dashBoard');
    notifyListeners();
  }
}
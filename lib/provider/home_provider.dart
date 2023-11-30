import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> tasks = [];

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void addTasks(BuildContext context, String name) {
    tasks.add({'name': name, 'checkbox': Checkbox});
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const Items()));
    notifyListeners();
  }
}
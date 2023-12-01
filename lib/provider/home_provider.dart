import 'package:bit_graph/services/api_function.dart';
import 'package:flutter/material.dart';

import '../model_class/task_class.dart';

class HomeProvider extends ChangeNotifier {
  List<bool> checkboxStates = List.generate(3, (index) => false);

  bool loading = false;

   Items ?profile;

  void toggleCheckbox(int index) {
    checkboxStates[index] = !checkboxStates[index];
    notifyListeners();
  }

  void dashBoard(BuildContext context) {
    Navigator.pushNamed(context, '/dashBoard');
    notifyListeners();
  }

  void profileImage(BuildContext context) async {
    try {
      loading = true;
      notifyListeners();
      profile = await ApiServices().getProfile();
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }
  }
}

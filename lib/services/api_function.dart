import 'dart:convert';
import 'package:bit_graph/model_class/task_class.dart';
import 'package:http/http.dart' as http;
import '../utilities/networkerror.dart';

class ApiServices {
  Future <Items>getProfile() async {
    final response = await http
        .get(Uri.parse('https://avatars.githubusercontent.com/u/78824745?v=4'));
    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response);
      var jsonData = jsonDecode(response.body);
      var data= Items.fromJson(jsonData);
      return data;
    } else {
      throw NetworkError.networkError(response.statusCode);
    }
  }
}

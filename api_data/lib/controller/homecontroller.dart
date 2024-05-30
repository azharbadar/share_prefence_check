import 'dart:convert';

import 'package:api_data/model/userModel.dart';
import 'package:http/http.dart' as http;

getuser() async {
  var userdata = [];
  var baseulr1 = "https://jsonplaceholder.typicode.com/users";
  var url = Uri.parse(baseulr1);
  var res = await http.get(url);
//  print("<<<<<<<<<<<<<<<<<<object>>>>>>>>>>>>>>>>>>");
  var jsonres = jsonDecode(res.body);
//  var res = await http.get(url);
//  print(res.body);
//  UserModel data = UserModel.fromJson(await jsonDecode(res.body));
  print(">>>>>");
  for (var i in jsonres) {
    userdata.add(UserModel.fromJson(i));
  }
//  print(res.body);
// print(data);
  return userdata;
}

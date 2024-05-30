import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Model/PostModel.dart';

// insitute Api

getuser() async {
  var userdata = [];
  var baseurl = "https://jsonplaceholder.typicode.com/posts";
  var Url = Uri.parse(baseurl);
  var res = await http.get(Url);
  var jsonres = jsonDecode(res.body);
  print('>>>>');
  for (var i in jsonres) {
    userdata.add(PostModel.fromJson(i));
  }
  return userdata;
}




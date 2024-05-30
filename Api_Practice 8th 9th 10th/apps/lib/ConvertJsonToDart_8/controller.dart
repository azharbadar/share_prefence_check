import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../ConvertJsonToDart_8/PostModel.dart';

// getuser()async{
//   var userdate = [];
//   Future<List<PostModel>> getPostApi() async{
//     final responce = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//     var data jsonDecode(responce.body.Tostring());
//     if(responce.statusCode == 200){
//
//     }
//   }
// }

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

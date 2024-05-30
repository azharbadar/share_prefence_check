import 'package:apps/ConvertJsonToDart_8/controller.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'Model.dart';
import 'package:http/http.dart' as http;

class User_View extends StatefulWidget {
  const User_View({super.key});

  @override
  State<User_View> createState() => _User_ViewState();
}

class _User_ViewState extends State<User_View> {
  // List<UserModel> userList = [];
  // Future<List<UserModel>> getuser() async {
  //   final response =
  //       await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     for (Map i in data) {
  //       userList.add(UserModel.fromJson(i));
  //     }
  //     return userList;
  //   } else {
  //     return userList;
  //   }
  // }

//   getuser() async {
//     var userdata = [];
//     var baseulr1 = "https://jsonplaceholder.typicode.com/users";
//     var url = Uri.parse(baseulr1);
//     var res = await http.get(url);
// //  print("<<<<<<<<<<<<<<<<<<object>>>>>>>>>>>>>>>>>>");
//     var jsonres = jsonDecode(res.body);
// //  var res = await http.get(url);
// //  print(res.body);
// //  UserModel data = UserModel.fromJson(await jsonDecode(res.body));
//     print(">>>>>");
//     for (var i in jsonres) {
//       userdata.add(UserModel.fromJson(i));
//     }
// //  print(res.body);
// // print(data);
//     return userdata;
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getuser(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data[index].name),
                subtitle: Text(snapshot.data[index].address.city),
              );
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    ));
  }
}




// Column(
//         children: [
//           Expanded(
//               child: FutureBuilder(
//             future: getuser(),
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(snapshot.data[index].name),
//                       subtitle: Column(children: [
//                         Text(snapshot.data[index].address.city),
//                         Text(snapshot.data[index].email)
//                       ]),
//                       trailing: Text(snapshot.data[index].website),
//                     );
//                   },
//                 );
//               } else {
//                 return const CircularProgressIndicator();
//               }
//             },
//           ))
//         ],
//       ),
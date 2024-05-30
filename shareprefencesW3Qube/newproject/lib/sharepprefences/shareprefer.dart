import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePrefer extends StatelessWidget {
  const SharePrefer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Share Prefrences"),
        ),
        body: const Column(
          children: [],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.setInt('age', 20);
            sp.setDouble('Lucky_Number', 20.2);
            sp.setString('Lucky_Number', 'AsifTaj');
            sp.setBool('islogin', false);
            print(sp.getInt('age'));
          },
          child: const Icon(Icons.add),
        ));
  }
}

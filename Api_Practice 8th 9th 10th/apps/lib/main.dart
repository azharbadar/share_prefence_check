import 'package:flutter/material.dart';

import 'ConvertJsonToDart_8/home.dart';
import 'Custom_Model_9/Homeview_Custom.dart';
import 'UserApi_10th/UserHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: User_View(),
    );
  }
}

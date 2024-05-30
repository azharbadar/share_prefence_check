import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newproject/Layout/layout.dart';
import 'package:newproject/LayoutBuildertwo/layoutbuilder.dart';
import 'package:newproject/Youtube/youtube.dart';
import 'package:newproject/sharepprefences/shareprefer.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight,
    // DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: videoLayout(),
    );
  }
}

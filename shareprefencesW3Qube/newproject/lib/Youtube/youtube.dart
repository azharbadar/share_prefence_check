import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class videoLayout extends StatelessWidget {
  const videoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
            builder: (context, Constraints) => Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: Colors.greenAccent,
                          height: Constraints.maxHeight * 0.24,
                          // width: Constraints.maxWidth * 0.5,
                          width: Constraints.maxWidth < 450
                              ? Constraints.maxWidth * 0.24
                              : Constraints.maxWidth * 0.5,
                          child: const Text(
                            "Box 1",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          color: Colors.lime,
                          height: Constraints.maxHeight * 0.24,
                          width: Constraints.maxWidth * 0.5,
                          child: const Text(
                            "Box 2",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.yellow,
                      height: Constraints.maxHeight * 0.48,
                      width: Constraints.maxWidth * 0.5,
                      child: const Text(
                        "Box 2",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}

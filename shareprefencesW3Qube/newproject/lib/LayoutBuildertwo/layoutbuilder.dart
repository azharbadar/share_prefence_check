import 'package:flutter/material.dart';

class LayoutTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LayoutBuilder Example'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight * 0.4,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Max Width: ${constraints.maxWidth.toStringAsFixed(2)}\nMax Height: ${constraints.maxHeight.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Center(
                //   child: Container(
                //     width: constraints.maxWidth * 0.8,
                //     height: constraints.maxHeight * 0.5,
                //     color: Colors.blue,
                //     child: Center(
                //       child: Text(
                //         'Max Width: ${constraints.maxWidth.toStringAsFixed(2)}\nMax Height: ${constraints.maxHeight.toStringAsFixed(2)}',
                //         style: const TextStyle(color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                    width: constraints.maxWidth * 0.2,
                    height: constraints.maxHeight * 0.5,
                    child: Image.asset("Rider_logo.png"))
              ],
            );
          },
        ),
      ),
    );
  }
}

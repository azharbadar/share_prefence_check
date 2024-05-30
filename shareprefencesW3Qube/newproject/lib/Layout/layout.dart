import 'package:flutter/material.dart';

class LayOut extends StatelessWidget {
  const LayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //constraint
          LayoutBuilder(builder: (context, BoxConstraints constraints) {
            if (constraints.maxWidth < 400) {
              return Column(
                children: [
                  Center(child: Image.asset("assets/Rider_logo.png")),
                  const Center(child: Text("This is image  center "))
                ],
              );
            } else {
              return const Text("this is desktop view");
            }
          }),
        ],
      ),
    );
  }
}

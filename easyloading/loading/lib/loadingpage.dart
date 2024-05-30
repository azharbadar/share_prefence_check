import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class homeview extends StatefulWidget {
  const homeview({super.key});

  @override
  State<homeview> createState() => _homeviewState();
}

class _homeviewState extends State<homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LoadingButton(),
        ],
      ),
    );
  }
}

class LoadingButton extends StatefulWidget {
  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool isLoading = false;

  void handleClick() {
    setState(() {
      isLoading = true; // Start loading animation
      // Perform your asynchronous task here
      // Once the task is complete, set isLoading to false to stop the animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : handleClick,
      child: isLoading
          ? const SpinKitCircle(
              color: Colors.white,
              size: 24.0,
            )
          : const Text('Click Me'),
    );
  }
}

import 'package:apps/ConvertJsonToDart_8/controller.dart';
import 'package:flutter/material.dart';

class testviews extends StatefulWidget {
  const testviews({super.key});

  @override
  State<testviews> createState() => _testviewsState();
}

class _testviewsState extends State<testviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // insitute Api

      body: FutureBuilder(
        future: getuser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:
                      Card(child: Text('title\n' + snapshot.data[index].title)),
                  subtitle: Text('Subtitle ' + snapshot.data[index].body),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

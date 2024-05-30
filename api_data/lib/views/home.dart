import 'package:api_data/controller/homecontroller.dart';
import 'package:api_data/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
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
                  // old oroginal
                  // return ListTile(
                  // title: Text(snapshot.data[index].name),
                  // subtitle:Column(children: [ Text(snapshot.data[index].address.city),
                  //  Text(snapshot.data[index].email)]),
                  // trailing: Text(snapshot.data[index].website),

                  // );
                  return Card(
                    child: Column(
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text("Name"),
                        //     Text(snapshot.data[index].name.toString())
                        //   ],
                        // ),
                        ReuseableRow(
                            title: 'Names', value: snapshot.data[index].name),
                        ReuseableRow(
                            title: 'Names', value: snapshot.data[index].name),
                        ReuseableRow(
                            title: 'UserName',
                            value: snapshot.data[index].username),
                        ReuseableRow(
                            title: 'Email', value: snapshot.data[index].email),
                        ReuseableRow(
                            title: 'Adress',
                            value: snapshot.data[index].address.city),
                        ReuseableRow(
                            title: 'Geo',
                            value: snapshot.data[index].address.geo.lat),
                      ],
                    ),
                  );
                });
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  String title, value;
  ReuseableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), Text(value)],
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Custom_homeview extends StatelessWidget {
  Custom_homeview({super.key});

  List<Photos> photoslist = [];
  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(
          title: i["title"],
          url: i["url"],
          id: i['id'],
        );
        photoslist.add(photos);
      }
      return photoslist;
    } else {
      return photoslist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: FutureBuilder(
              future: getPhotos(),
              builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                return ListView.builder(
                  itemCount: photoslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      // title: Center(child: Text("${index} this is Asif Taj")),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapshot.data![index].url),
                      ),
                      title: Center(
                          child: Text(snapshot.data![index].title.toString())),
                      subtitle: Text(snapshot.data![index].url),
                      trailing: Text(snapshot.data![index].id.toString()),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: FutureBuilder(
              future: getPhotos(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: photoslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Center(child: Text("${index} Expanded")),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  String title, url;
  int id;
  Photos({
    required this.title,
    required this.url,
    required this.id,
    // required this.id,
  });
}

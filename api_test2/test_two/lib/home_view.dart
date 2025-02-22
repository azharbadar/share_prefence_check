import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
      appBar: AppBar(
        title: const Text("Api"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPhotos(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: photoslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("ASIF TAJ"),
                    );
                  },
                );
              },
            ),
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
                      title: Text("List two"),
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
  Photos({required this.title, required this.url});
}

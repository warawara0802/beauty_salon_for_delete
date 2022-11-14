import 'dart:convert';

import 'package:beauty_salon/pages/bookmark_detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  List items = [];

  Future<void> getDate() async {
    var url = Uri.parse("https://www.googleapis.com/books/v1/volumes?q=search+terms");
    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    setState(() {
      items = jsonResponse['items'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お気に入り'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>
              BookmarkDetail(
                  items[index]['id'],
                  items[index]['volumeInfo']['title']
              )));
            },
            child: Card(
              child: Column(
                children: <Widget> [
                  ListTile(
                    leading: Image.network(
                      items[index]['volumeInfo']['imageLinks']['thumbnail'],
                    ),
                    title: Text(items[index]['volumeInfo']['title']),
                    subtitle: Text(items[index]['id']),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

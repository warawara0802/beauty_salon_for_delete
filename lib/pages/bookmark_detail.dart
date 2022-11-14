import 'dart:convert';

import 'package:beauty_salon/model/favorite.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BookmarkDetail extends StatefulWidget {
  final String id;
  final String title;
  const BookmarkDetail(this.id, this.title, {Key? key}) : super(key: key);

  @override
  State<BookmarkDetail> createState() => _BookmarkDetailState();
}

class _BookmarkDetailState extends State<BookmarkDetail> {

  // Future<Favorite> _getFutureValue() async {
  //   Favorite favorite = new Favorite(id: '123456', name: 'name', image: 'test');
  //   // 擬似的に通信中を表現するために１秒遅らせる

  
  //   await Future.delayed(
  //     const Duration(seconds: 1),
  //   );
  //   return Future.value(favorite);
  // }

  Future<Favorite> _getFutureValue() async {
    var url = Uri.parse("https://reqres.in/api/users/2");
    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    Favorite favorite = Favorite(
        id: jsonResponse['data']['id'].toString(),
        name: jsonResponse['data']['first_name'].toString() + jsonResponse['data']['last_name'].toString(),
        image: jsonResponse['data']['avatar'].toString()
    );
    return favorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark Detail'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _getFutureValue(),
          builder: (BuildContext context, AsyncSnapshot<Favorite> snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const CircularProgressIndicator();
            }
            if(snapshot.hasData) {
              return Row(
                children: [
                  Image.network(snapshot.data!.image),
                  Text(snapshot.data!.id),
                  Text(snapshot.data!.name),
                ],
              );
            } else {
              return const Text('deta is none');
            }
          },
        ),
      ),
    );
  }
}

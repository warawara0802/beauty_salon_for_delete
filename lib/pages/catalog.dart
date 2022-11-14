import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {

  @override
  Widget build(BuildContext context) {

    // MEMO: 初期データを入れないとエラーになるため一時的に投入
    var list = [
      _photoItem("images/sample_image.jpg"),
    ];

    for(int i= 0; i < 30; i++){
      var obj = _photoItem("images/sample_image.jpg");
      list.add(obj);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('カタログ'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
              crossAxisCount: 4,
              children: list
          ),
        )
    );


  }

  Widget _photoItem(String image){
    return Container(
      child: Image.asset(image, fit: BoxFit.cover,),
    );
  }
}

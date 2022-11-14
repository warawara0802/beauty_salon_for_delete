import 'package:beauty_salon/pages/message_box.dart';
import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('新着情報'),
            Container(
              height: 120,
              width: 1000,
              color: const Color.fromARGB(0xFF, 0xF0, 0xF0, 0xF0),
              //(4) ここからRowスタート
              child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MessageBox()
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.white,
                        height: 100,
                        width: 100,
                        child: const Icon(Icons.email),
                      ),
                    ),
                    Container(
                        color: Colors.white,
                        height: 100,
                        width: 100,
                        child: const Icon(Icons.card_giftcard)
                    ),
                    Container(
                        color: Colors.white,
                        height: 100,
                        width: 100,
                        child: const Icon(Icons.info)
                    )
                  ]
              ),
            ),
            const Text('会員メニュー')
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/menu.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  List<Menu> menuList = [
    Menu(
        menuId: '1',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
    Menu(
        menuId: '2',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
    Menu(
        menuId: '3',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
    Menu(
        menuId: '4',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
    Menu(
        menuId: '5',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
    Menu(
        menuId: '6',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
    Menu(
        menuId: '7',
        menuName: 'hair resort',
        menuImg: 'images/sample_image.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メッセージBOX'),
      ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(menuList[index].menuImg, scale: 3,),
                ),
                Column(
                  children: [
                    Text(menuList[index].menuId),
                    Text(menuList[index].menuName),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

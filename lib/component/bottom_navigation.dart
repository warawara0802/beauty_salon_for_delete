import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.book,
            color: Colors.white,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.notification_add,
            color: Colors.white,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.home,
            color: Colors.white,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ],

      ),
    );
  }
}
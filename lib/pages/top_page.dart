import 'package:beauty_salon/component/footer.dart';
import 'package:beauty_salon/pages/bookmark.dart';
import 'package:beauty_salon/pages/catalog.dart';
import 'package:beauty_salon/pages/mypage.dart';
import 'package:flutter/material.dart';

import '../component/bottom_navigation.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {

  static const _screens = [
    Catalog(),
    BookmarkScreen(),
    Mypage()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      // bottomNavigationBar: const BottomNavigation(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'ホーム'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'お気に入り'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'マイページ'
          )
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}



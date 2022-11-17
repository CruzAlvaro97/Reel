import 'package:flutter/material.dart';
import 'package:tarea8/screen3.dart';

class ScreenReels extends StatefulWidget {
  const ScreenReels({super.key});

  @override
  State<ScreenReels> createState() => _ScreenReelsState();
}

class _ScreenReelsState extends State<ScreenReels> {
  int _selectedIndex = 2;

  static const List<Widget> _widgetOptions = [
    Text('1'),
    Text('2'),
    // Text('3'),
    Screen3Reels(),
    Text('4'),
    Text('5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(
          _selectedIndex,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white, width: 0.5),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home_rounded,
                size: 30,
              ),
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search_rounded,
                size: 30,
              ),
              icon: Icon(
                Icons.search_outlined,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.movie_filter_rounded,
                size: 30,
              ),
              icon: Icon(
                Icons.movie_filter_outlined,
                size: 30,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_bag_rounded,
                size: 30,
              ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

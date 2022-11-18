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
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1616356257367-9cd4bf56a45e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  scale: 0.5,
                ),
                radius: 15,
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

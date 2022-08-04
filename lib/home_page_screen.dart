import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List listOfColors = [
    //const HomePage(),
    Container(
        // color: Colors.yellow,
        ),
    Container(
        // color: Colors.yellow,
        ),
    Container(
        // color: Colors.blue,
        ),
    Container(
        //  color: Colors.redAccent,
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfColors[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(Icons.home_filled),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.favorite_outline),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.explore),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.info_outline),
            label: '_',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

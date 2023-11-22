import 'package:flutter/material.dart';
import 'package:uptodo/Navigationbarpages.dart/CalendarPage.dart';
import 'package:uptodo/Navigationbarpages.dart/FocusPage.dart';
import 'package:uptodo/Navigationbarpages.dart/ProfilePage.dart';
import 'package:uptodo/Navigationbarpages.dart/homepage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<NavigationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 79, 53, 128),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return Calendar();
      case 2:
        return Focus1();
      case 3:
        return Profile1();
      default:
        return Container();
    }
  }

  Null get newMethod => null;
}

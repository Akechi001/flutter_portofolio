import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'First.dart';
import 'Second.dart';
import 'Third.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  Widget currentScreen = HomeScreen(); // Set an initial value

  void _onBottomNavigationBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 0) {
        currentScreen = HomeScreen();
      } else if (index == 1) {
        currentScreen = SearchScreen();
      } else if (index == 2) {
        currentScreen = FavoritesScreen();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: currentScreen,
      bottomNavigationBar: ReusableBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavigationBarItemTapped,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
import 'package:flutter/material.dart';

class ReusableBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  ReusableBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  _ReusableBottomNavigationBarState createState() =>
      _ReusableBottomNavigationBarState();
}

class _ReusableBottomNavigationBarState
    extends State<ReusableBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
      ],
    );
  }
}



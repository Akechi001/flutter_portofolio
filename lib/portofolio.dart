// favorites_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/portofolio_item.dart';

class PortofolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        backgroundColor: Colors.green, // Change the app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Projects:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            PortfolioItem(
              title: 'Project 1',
              description: 'Description of Project 1 goes here.',
            ),
            PortfolioItem(
              title: 'Project 2',
              description: 'Description of Project 2 goes here.',
            ),
            // Add more portfolio items as needed
            SizedBox(height: 20),
            Text(
              'Skills:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Flutter, Dart, Firebase, etc.'),
            // Add more skills as needed
          ],
        ),
      ),
    );
  }
}


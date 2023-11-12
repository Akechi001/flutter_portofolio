// search_screen.dart
import 'package:flutter/material.dart';

import 'biodata_info.dart';

class BiodataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 50),
            // Use a custom widget for displaying information
            BiodataInfo(label: 'Name', value: 'Enrico Kevin Ariantho'),
            BiodataInfo(label: 'Age', value: '20'),
            BiodataInfo(label: 'Address', value: 'Jl. Domba No.28'),
            BiodataInfo(label: 'Gender', value: 'Male'),
            // Add more information as needed
          ],
        ),
      ),
    ),
    ),
    );
  }
}
// home_screen.dart
import 'dart:js_interop';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 150.0,
              ),
            ),
          SizedBox(height: 20),
          Text(
            'Hijikata Toshiro',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          ElevatedButton.icon(
              onPressed: (){

          },
              icon: Icon(
                Icons.people,
                size: 30,
              ),
              label: Text(
                  'Biodata',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20), // Adjust padding to control the button's size.

            ),
          ),

          SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: (){

            },
            icon: Icon(
              Icons.portrait,
              size: 30,
            ),
            label: Text(
              'Portofolio',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20), // Adjust padding to control the button's size.

            ),
          ),
        ],
      ),
    );
  }
}
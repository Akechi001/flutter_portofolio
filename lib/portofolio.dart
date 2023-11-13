// favorites_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/portofolio_item.dart';

class PortofolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto, Nama, Pendidikan, Skill
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Nama Anda',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    Text('Pendidikan Anda'),
                    SizedBox(height: 10.0),
                    Text(
                      'Skill Anda',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    // List of skills
                    Wrap(
                      spacing: 8.0,
                      children: [
                        Chip(label: Text('Skill 1')),
                        Chip(label: Text('Skill 2')),
                        Chip(label: Text('Skill 3')),
                        // Add more skills as needed
                      ],
                    ),
                  ],
                ),
              ),
              // Cards dengan foto dan 2 line text (scroll horizontal)
              Container(
                height: 150.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myCards.length,
                  itemBuilder: (context, index) {
                    return MyCardWidget(myCard: myCards[index]);
                  },
                ),
              ),
              // ... (Widget sesudahnya seperti kontak dengan icon dan info kontak)
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard {
  final String imagePath;
  final String line1;
  final String line2;

  MyCard({required this.imagePath, required this.line1, required this.line2});
}

final List<MyCard> myCards = [
  MyCard(imagePath: 'assets/profile.jpg', line1: 'HALO', line2: '2021-2022'),
  MyCard(imagePath: 'assets/card_image2.jpg', line1: 'Line 1B', line2: 'Line 2B'),
  // Add more cards as needed
];

class MyCardWidget extends StatelessWidget {
  final MyCard myCard;

  const MyCardWidget({required this.myCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(myCard.imagePath, height: 80.0),
          SizedBox(height: 8.0),
          Text(myCard.line1),
          Text(myCard.line2),
        ],
      ),
    );
  }
}
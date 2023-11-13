import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SkillChip extends StatelessWidget {
  final String skillName;
  final int rating;

  SkillChip({required this.skillName, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(skillName),
            SizedBox(width: 4.0),
            // Icon titik dengan skala 1-5
            for (int i = 0; i < rating; i++)
              Icon(Icons.brightness_1, size: 12.0, color: Colors.green),
            for (int i = rating; i < 5; i++)
              Icon(Icons.brightness_1, size: 12.0, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String text;

  EducationItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          minWidth: 200.0, // Atur lebar minimum sesuai kebutuhan
        ),
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
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
  MyCard(imagePath: 'assets/card1.jpg', line1: 'Wakil Ketua UKM WEEBUSINESS', line2: '2023 - sekarang'),
  MyCard(imagePath: 'assets/card3.jpg', line1: 'Wakil Ketua UKM Karate', line2: '2022 - 2023'),
  MyCard(imagePath: 'assets/card2.jpg', line1: 'Panitia LO NPLC 10th', line2: '2022'),
  MyCard(imagePath: 'assets/card4.jpg', line1: 'Finalis lomba IOT Semarang', line2: '2022'),
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
          Image.asset(
            myCard.imagePath,
            height: 100.0,
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0), // Padding hanya pada kiri dan kanan
            child: Text(
                myCard.line1,
                textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Padding hanya pada kiri dan kanan
            child: Text(
                myCard.line2,
                textAlign: TextAlign.left,

            ),
          ),
        ],
      ),
    );
  }
}
class ContactInfo extends StatelessWidget {
  final String iconPath; // Change from IconData to String for SVG path
  final String info;

  const ContactInfo({required this.iconPath, required this.info});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 30.0,
              width: 30.0,
              color: Colors.black, // Customize the color if needed
            ),
            SizedBox(width: 8.0),
            Text(info),
          ],
        ),
      ),
    );
  }
}
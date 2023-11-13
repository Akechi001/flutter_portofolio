// favorites_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/portofolio_item.dart';
import 'package:flutter_svg/svg.dart';

class PortofolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            // Foto, Nama, Pendidikan, Skill
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Enrico Kevin Ariantho',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Skills dengan tingkat penguasaan (skala 1-5)
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skill',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16),
                              // List of skills with rating
                              SkillChip(skillName: 'Flutter    ', rating: 3),
                              SkillChip(skillName: 'HTML     ', rating: 5),
                              SkillChip(skillName: 'React JS', rating: 2),
                              // Add more skills as needed
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0), // Spacer
                        // Pendidikan dari SD - Universitas
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Education',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16),

                              // List of education
                              EducationItem(
                                  text: 'SD Hati Kudus\n\n - 2010 - 2016'),
                              EducationItem(
                                  text:
                                      'SMP Katolik Rajawali\n\n - 2016 - 2019'),
                              EducationItem(
                                  text:
                                      'SMA Katolik Rajawali\n\n - 2019 - 2022'),
                              EducationItem(
                                  text:
                                      'Universitas Ciputra Makassar\n\n- 2022 - sekarang'),
                              // Add more education items as needed
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                      child: Text(
                        'Experience',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Cards dengan foto dan 2 line text (scroll horizontal)
                  Container(
                    height: 180.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myCards.length,
                      itemBuilder: (context, index) {
                        return MyCardWidget(myCard: myCards[index]);
                      },
                    ),
                  ),
                  // Kontak dengan icon dan info kontak
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContactInfo(
                          iconPath: 'assets/icons/phone.svg',
                          info: '+62895630865639',
                        ),
                        ContactInfo(
                          iconPath: 'assets/icons/email.svg',
                          info: 'eariantho@student.ciputra.ac.id',
                        ),
                        ContactInfo(
                          iconPath: 'assets/icons/facebook.svg',
                          info: 'Enrico Kevin',
                        ),
                        ContactInfo(
                          iconPath: 'assets/icons/instagram.svg',
                          info: 'enrico_kevin_',
                        ),
                        ContactInfo(
                          iconPath: 'assets/icons/line.svg',
                          info: 'enrico30102003',
                        ),
                        ContactInfo(
                          iconPath: 'assets/icons/github.svg',
                          info: 'Akechi001',
                        ),
                        // Add more contact info as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

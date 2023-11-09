import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'home.dart';
import 'biodata.dart';
import 'portofolio.dart';

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
        currentScreen = BiodataScreen();
      } else if (index == 2) {
        currentScreen = PortofolioScreen();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portofolio'),
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
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/Home':
          return MaterialPageRoute(builder: (context) => HomeScreen());
        case '/Biodata':
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return BiodataScreen();
            },
/*            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0); // Slide in from the right
              const end = Offset.zero;
              const curve = Curves.ease;
              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },*/
          );
        case '/Portofolio':
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation){
              return PortofolioScreen();
            },
            /*transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0); // Slide in from the right
              const end = Offset.zero;
              const curve = Curves.ease;
              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },*/
          );
      }
    },

    home: MyHomePage(),
  ));
}
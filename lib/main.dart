import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screen/HomePage.dart';
import 'package:movie_app/screen/splashScreen.dart';
import 'package:movie_app/screen/profilepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(),
    );
  }
}

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  final List<Widget> badan = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: ClipRRect(
        child: Scaffold(
          extendBody: true,
            body: Center(
              child: badan.elementAt(_selectedNavbar),
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              buttonBackgroundColor: Colors.orange,
              height: 50,
              items: [
                Icon(Icons.home, size: 20, color: Colors.white,),
                Icon(Icons.person, size: 20, color: Colors.white,),
              ],
              onTap: _changeSelectedNavBar,
              animationDuration: Duration(milliseconds: 300),
              color: Colors.orange,
            )
      
            // BottomNavigationBar(
            //   items: const <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(
            //       activeIcon: Icon(Icons.home),
            //       icon: Icon(Icons.home_outlined),
            //       title: Text('.'),
            //     ),
            //     BottomNavigationBarItem(
            //       activeIcon: Icon(Icons.person),
            //       icon: Icon(Icons.person_outline),
            //       title: Text('.'),
            //     ),
            //   ],
            //   currentIndex: _selectedNavbar,
            //   selectedItemColor: Colors.red,
            //   unselectedItemColor: Colors.grey,
            //   showUnselectedLabels: false,
            //   onTap: _changeSelectedNavBar,
            //   backgroundColor: Color(0xFF08091B),
            //   elevation: 0,
            // ),
            ),
      ),
    );
  }
}
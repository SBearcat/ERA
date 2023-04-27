import 'package:flutter/material.dart';
import 'package:syren_front_end/navpages/homePage.dart';
import 'package:syren_front_end/navpages/prep.dart';
import 'package:syren_front_end/navpages/splashPage.dart';

import 'guides.dart';
import 'homePage.dart';
import 'map.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    LandingPage(),
    PrepPage(),
    MapPage()
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type:BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items:[
            BottomNavigationBarItem(label:("Home"),icon: Icon(Icons.house_outlined)),
            BottomNavigationBarItem(label:("Guides"),icon: Icon(Icons.format_list_bulleted_rounded)),
            BottomNavigationBarItem(label:("Map"),icon: Icon(Icons.add_location_alt_rounded)),
          ]
      ),
    );
  }
}

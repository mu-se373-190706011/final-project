import 'package:city_tourr/pages/navpages/google_map.dart';
import 'package:city_tourr/pages/home_page.dart';
import 'package:city_tourr/pages/navpages/my_page.dart';
import 'package:city_tourr/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), SearchPage(), GoogleMapPage(), MyPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Color.fromARGB(255, 32, 106, 102),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.apps),
            ),
            BottomNavigationBarItem(
                label: "search", icon: Icon(Icons.search_rounded)),
            BottomNavigationBarItem(label: "map", icon: Icon(Icons.map)),
            BottomNavigationBarItem(
                label: "my", icon: Icon(Icons.person_outline)),
          ]),
    );
  }
}

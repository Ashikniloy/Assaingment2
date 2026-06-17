import 'package:flutter/material.dart';
import 'about.dart';
import 'home.dart';
class Botom_nav extends StatefulWidget {
  const Botom_nav({super.key});

  @override
  State<Botom_nav> createState() => _Botom_navState();
}

class _Botom_navState extends State<Botom_nav> {
  int selectedIndex = 0;
  List<Widget> screens = [
    Home(),
    About(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'About',
          ),
        ],
      ),
    );
  }
}

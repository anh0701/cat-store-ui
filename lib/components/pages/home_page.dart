import 'package:cat_store_ui/components/atoms/bottom_navbar.dart';
import 'package:cat_store_ui/components/pages/profile.dart';
import 'package:cat_store_ui/components/pages/tab_home.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  final List<Widget> _pages = [TabHome(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(currentIndex),
      bottomNavigationBar: bottom_navbar(items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ], currentIndex: currentIndex, onTap: onItemTapped),
    );
  }
}

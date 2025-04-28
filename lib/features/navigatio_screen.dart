import 'package:flutter/material.dart';
import 'package:services/features/frequently_used_service/view/frequent_services.dart';
import 'package:services/features/home/view/home_screen.dart';
import 'package:services/features/profile/profile_screen.dart';

import 'home/view/all_categories_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentScreen = 0;
  List<Widget> screens = [
    HomeScreen(),
    AllCategories(),
    FrequentServices(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreen,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.green.shade200,
          onTap: (index) {
            currentScreen = index;

            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time_rounded), label: 'Recent'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
    );
  }
}

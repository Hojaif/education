import 'package:flutter/material.dart';

import '../theme.dart';
import '../widget/navbar_item.dart';
import 'coures_screen.dart';
import 'dashbord_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  // Add the screens for navigation
  final List screens = [
    const DashbordScreen(),
    const CouresScreen(),
    const ProfileScreen(),
  ];

  // Function to update the selected index
  void onNavbarItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: screens[selectedIndex],
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/Home.png',
              name: 'Home',
              isActive: selectedIndex == 0,
              onTap: () => onNavbarItemTap(0), // Set the index on tap
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Work.png',
              name: 'Course',
              isActive: selectedIndex == 1,
              onTap: () => onNavbarItemTap(1),
            ),
            BottomNavbarItem(
              imageUrl: 'assets/Profile.png',
              name: 'Profile',
              isActive: selectedIndex == 2,
              onTap: () => onNavbarItemTap(2),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

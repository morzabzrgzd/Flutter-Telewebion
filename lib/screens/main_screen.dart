import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telewebion/helpers/colors.dart';
import 'package:telewebion/screens/archive/archive_screen.dart';
import 'package:telewebion/screens/home/home_screen.dart';
import 'package:telewebion/screens/live/live_screen.dart';
import 'package:telewebion/screens/profile/profile_screen.dart';
import 'package:telewebion/screens/search/search_screen.dart';

import '../models/bottom_nav_bar_model.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List children = [
     HomeScreen(),
    const LiveScreen(),
    const SearchScreen(),
    const ArchiveScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: CupertinoTabScaffold(
          backgroundColor: kBackgroundColor,
          tabBar: CupertinoTabBar(
            // currentIndex: ,
            inactiveColor: Colors.grey.shade700,
            height: 60,
            activeColor: kIconColor,
            backgroundColor: Colors.black,
            items: List.generate(
              bottomNavBar.length,
              (index) => buildBottomNavBar(index),
            ),
          ),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return children[index];
              },
            );
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavBar(int index) {
    return BottomNavigationBarItem(
      icon: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 2),
          Icon(
            bottomNavBar[index].icon,
            size: 22,
          ),
          Text(
            bottomNavBar[index].label,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Shabnam',
            ),
          )
        ],
      ),
      activeIcon: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 2),
          Icon(
            bottomNavBar[index].activeIcon,
            color: kIconColor,
            size: 22,
          ),
          Text(
            bottomNavBar[index].label,
            style: TextStyle(
              color: kTextColor,
              fontSize: 12,
              fontFamily: 'Shabnam',
            ),
          ),
        ],
      ),
    );
  }
}

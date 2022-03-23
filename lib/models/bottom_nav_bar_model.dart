import 'package:flutter/cupertino.dart';

class BottomNavBar {
  final String label;
  final IconData icon;
  final IconData activeIcon;

  BottomNavBar({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}

List bottomNavBar = [
  BottomNavBar(
    icon: CupertinoIcons.house_alt,
    label: 'خانه',
    activeIcon: CupertinoIcons.house_alt_fill,
  ),
  BottomNavBar(
    icon: CupertinoIcons.play_rectangle,
    label: 'پخش زنده',
    activeIcon: CupertinoIcons.play_rectangle_fill,
  ),
  BottomNavBar(
    icon: CupertinoIcons.search,
    label: 'جستجو',
    activeIcon: CupertinoIcons.search,
  ),
  BottomNavBar(
    icon: CupertinoIcons.archivebox,
    label: 'آرشیو',
    activeIcon: CupertinoIcons.archivebox_fill,
  ),
  BottomNavBar(
    icon: CupertinoIcons.person,
    label: 'پروفایل',
    activeIcon: CupertinoIcons.person_fill,
  ),
];

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  late int currentIndex;
  late ValueChanged<int> ontap;

  BottomNavigation(
      {required this.currentIndex, required this.ontap, super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/shop.png'),
            ),
            label: 'Shop'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/explore.png')
            ),
            label: 'Explore'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/cart.png')
            ),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/heart.png')
            ),
            label: 'Favourite'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/user.png')
            ),
            label: 'Account')
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.ontap,
      selectedItemColor: const Color.fromRGBO(83, 177, 117, 1),
      unselectedItemColor: const Color.fromRGBO(24, 23, 37, 1),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedLabelStyle:
          const TextStyle(fontFamily: 'gilroy', fontWeight: FontWeight.w700),
      unselectedLabelStyle:
          const TextStyle(fontFamily: 'gilroy', fontWeight: FontWeight.w700),
      showUnselectedLabels: true,
      // backgroundColor: const Color.fromRGBO(230, 235, 243, 0.5),
    );
  }
}

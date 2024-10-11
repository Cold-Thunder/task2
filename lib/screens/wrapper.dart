import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2_proj/screens/account_screen.dart';
import 'package:task2_proj/screens/cart_screen.dart';
import 'package:task2_proj/screens/explore_screen.dart';
import 'package:task2_proj/screens/favourite_screen.dart';
import 'package:task2_proj/screens/home_screen.dart';
import 'package:task2_proj/widgets/button_nav.dart';

class Wrapper extends StatefulWidget{
  @override
  State<Wrapper> createState()=> _WrapperState();
}
class _WrapperState extends State<Wrapper>{
  int _currentInd = 0;
  void onTapChange(int index){
    setState((){
      _currentInd = index;
    });
  }

  List<Widget> pages = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: Container(
          height: 92,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: const Color.fromRGBO(0,0,0,0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0,-3)
                )
              ]
          ),
          child: ClipRRect(
              borderRadius:const BorderRadius.only(topLeft:Radius.circular(15), topRight: Radius.circular(15)),
          child: BottomNavigation(
            currentIndex: _currentInd,
            ontap: onTapChange,
          ),

        )
      ),
      body: pages[_currentInd]
    );
  }
}
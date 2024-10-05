import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task2/screens/home_screen.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  void initState(BuildContext context){
    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> const HomeScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context){
    final width= MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            color: const Color.fromRGBO(83, 177, 117,1),
            child: Center(
                child: Image.asset('assets/splash_logo.png')
            )
        )
    );
  }
}


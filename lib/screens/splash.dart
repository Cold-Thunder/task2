import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task2_proj/screens/home_screen.dart';
import 'package:task2_proj/screens/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            color: const Color.fromRGBO(83, 177, 117, 1),
            child: Image.asset('assets/images/splash_logo.png')));
  }
}

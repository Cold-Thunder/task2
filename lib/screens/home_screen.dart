import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            child:Image.asset('assets/images/carrot_home.png')
          ),
      ),
      body: Container(
        child: const Text('This is home page')
      )
    );
  }
}
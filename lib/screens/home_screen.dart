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

      ),
      body: Container(
        child: const Text('This is home page')
      )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget{
  @override
  State<FavouriteScreen> createState()=>_FavouriteScreenState();
}
class _FavouriteScreenState extends State<FavouriteScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/shop.png')
            )
          ]
        )
      )
    );
  }
}
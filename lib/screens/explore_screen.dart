import 'package:flutter/cupertino.dart';

class ExploreScreen extends StatefulWidget{
  @override
  State<ExploreScreen> createState()=>_ExploreStateScreen();
}
class _ExploreStateScreen extends State<ExploreScreen>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('Explore')
    );
  }
}
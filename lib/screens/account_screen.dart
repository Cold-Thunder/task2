import 'package:flutter/cupertino.dart';

class AccountScreen extends StatefulWidget{
  @override
  State<AccountScreen> createState()=>_AccountScreenState();
}
class _AccountScreenState extends State<AccountScreen>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Text('account')
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget{
  TextEditingController searchCont = TextEditingController();

  SearchInput({
    required this.searchCont,
    super.key
  });

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 51.57,
      child: TextField(
        controller: searchCont,
        decoration: InputDecoration(
          hintText: 'Search Store',
          hintStyle: const TextStyle(
            fontFamily: 'gilroy',
            fontSize: 14,
            fontWeight: FontWeight.w600
          ),
          filled: true,
          fillColor: const Color.fromRGBO(242, 243, 242, 1),
          prefixIcon: IconButton(
            onPressed: (){
              searchCont.text = "";
              print('searching');
            },
            icon: const Icon(Icons.search, color: Color.fromRGBO(24, 27, 25, 1))
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)
          )
        )
      )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget{
  late String title;
  Function action;

  SectionHeading({
    required this.title,
    required this.action,
    super.key
});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Flex(
        direction:Axis.horizontal,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text(title, style: const TextStyle(
                fontSize: 24,
                color:Color.fromRGBO(24, 23, 37, 1),
                fontWeight: FontWeight.w600,
              ))
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  action();
                },
                child: const Text('See All', style: TextStyle(
                  color: Color.fromRGBO(83, 177, 117, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ))
              )
            )
          )
        ]
      )
    );
  }
}
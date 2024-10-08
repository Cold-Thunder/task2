import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FuncButton extends StatelessWidget{
  late String title;
  String? icon;
  late Color color;
  VoidCallback func;
  FuncButton({
    required this.title,
    required this.func,
    required this.color,
    this.icon,
    super.key
});

  @override
  Widget build(BuildContext context){

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        )
    );

    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: func,
          style: buttonStyle,
          child: Container(
              height: 67,
              color: color,
              child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child:Container(
                        alignment: Alignment.centerLeft,
                        child:  icon != null ? SvgPicture.asset(icon!, height: 24.06, width: 22.95): null
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(title, style:const TextStyle(
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white
                    )))
                  ]
              )
          )
      )
    );
  }
}
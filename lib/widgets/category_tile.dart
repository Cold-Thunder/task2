import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget{
  late String title;
  late String img;
  late Color color;
  late String link;

  CategoryTile({
    required this.title,
    required this.img,
    required this.link,
    required this.color,
    super.key
});


  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=> ));
      },
      child:Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 105,
      width: 248,
      decoration:BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 105,
              child: Image.asset(img)
            )
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              height: 105,
              child: Text(title, style: const TextStyle(
                fontSize: 20,
                fontFamily: 'gilroy',
                fontWeight: FontWeight.w600,
                // color: color
              ))
            )
          )
        ],
      )
    ));
  }
}
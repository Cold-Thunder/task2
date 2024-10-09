import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdCard extends StatelessWidget{
  late String image;
  late String title;
  late String price;
  late String qun;

  ProdCard({
    required this.image,
    required this.title,
    required this.price,
    required this.qun,
    super.key
  });

  ButtonStyle btnStyle = ElevatedButton.styleFrom(
    backgroundColor:const Color.fromRGBO(83, 177, 117, 1),
    shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17)
    )
  );

  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(226, 226, 226,1),
          width: 1,
        ),
          borderRadius: BorderRadius.circular(18)

      ),
      width: 173.32,
      height: 248.51,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.center,
                child: Image.asset(image)
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topLeft,
              width: width,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child: Text(title, style: const TextStyle(
                                fontFamily: 'gilroy',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ))),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(qun, style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(124,124,124,1)
                            ))
                        ),
                      ]
                    )
                  ),
                  Expanded(
                    flex: 3,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 2,
                          child:
                        Container(
                          child: Text(price, style:const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                          ))
                        )),
                        SizedBox(
                          height: 45.67,
                          width: 45.67,
                          child: FloatingActionButton(
                              onPressed: (){
                                print("Action button");
                              },
                              elevation: 1,
                              backgroundColor: const Color.fromRGBO(83, 177, 117, 1),
                              child: const Icon(Icons.add, size: 25, color: Colors.white)
                          )
                        )
                      ]
                    )
                  )

                ]
              )
            )
          )
        ]
      )
    );
  }
}
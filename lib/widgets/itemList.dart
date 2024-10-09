import 'package:flutter/cupertino.dart';
import 'package:task2_proj/datas/home_data.dart';
import 'package:task2_proj/widgets/category_tile.dart';
import 'package:task2_proj/widgets/prod_card.dart';

class ItemList extends StatelessWidget{
   List<Map<String, dynamic>>? items;
  ItemList({
    required this.items,
    super.key
  });


  @override
  Widget build(BuildContext context){
    return Container(
      margin:const EdgeInsets.only(top: 10, bottom: 10),
      height: items! != groceriesType ? 250 : 105,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items!.length,
          itemBuilder: (context, index){
            var item = items![index];
            // print(items!);
            return items! == groceriesType ? CategoryTile(title: item["name"], img: item["image"], link: item["link"], color: item["color"]) :
              ProdCard(image: item['image'], title: item['name'], price: item['price'], qun: item['qunt']);
          }
    ));
  }
}
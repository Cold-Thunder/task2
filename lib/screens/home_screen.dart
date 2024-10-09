import 'package:flutter/material.dart';
import 'package:task2_proj/widgets/category_tile.dart';
import 'package:task2_proj/widgets/itemList.dart';
import 'package:task2_proj/widgets/search_input.dart';
import 'package:task2_proj/widgets/section_heading.dart';
import '../datas/home_data.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  TextEditingController searchCont = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Container(
              alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                    child:Image.asset('assets/images/carrot_home.png')
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Color.fromRGBO(76, 79, 77, 1)),
                      Text('Dhaka, Banassre', style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(76, 79, 77, 1)
                      ))
                    ],
                  )
                )
              ],
            )
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchInput(searchCont: searchCont), //search bar
            Container( //home banner
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding:const EdgeInsets.only(left: 10, right: 10),
              child: Image.asset("assets/images/home_banner.png")
            ),
            Container( //exclusive offers
              child: Column(
                children:[
                  SectionHeading(title: "Exclusive Offer", action: seeAllButton),
                  ItemList(items: offers),
                  SectionHeading(title: "Best Selling", action: seeAllButton),
                  ItemList(items: bestSelling),
                  SectionHeading(title: "Groceries", action: seeAllButton),
                  ItemList(items: groceriesType),
                  ItemList(items: groceries)
                ]
              )
            )
            ]
        )
      )
    );
  }

  seeAllButton(){
    print('see all');
  }
}
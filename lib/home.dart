import 'package:althafapp/modles/food.dart';
import 'package:althafapp/modles/foodpage.dart';
import 'package:althafapp/modles/my_food_tiles.dart';
import 'package:althafapp/modles/restart.dart';
import 'package:althafapp/mydarwer.dart';
import 'package:althafapp/mysliverapp.dart';
import 'package:althafapp/tabbar.dart';
import 'package:althafapp/theme/descrptionbox.dart';
import 'package:althafapp/theme/my_current_loc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget {
   const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  with SingleTickerProviderStateMixin{


    
    late TabController _tabController;


 @override
  void initState(){
    super.initState();
    _tabController=TabController(length:FoodCatetory.values.length, vsync: this);
  }

   @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filtermenu(FoodCatetory category ,List<Food> fullmenu){
    return fullmenu.where((food)=>food.catetory==category).toList();
  }

List<Widget> getfood(List<Food> fullmenu){
  return FoodCatetory.values.map((Category){
    List<Food> categorymenu=_filtermenu(Category, fullmenu);

    return ListView.builder(itemCount:categorymenu.length,
    padding: EdgeInsets.zero,
    physics: NeverScrollableScrollPhysics(),
     itemBuilder: (context,index){

      //get indiviual food
      final food=categorymenu[index];
      return MyFoodTiles(food: food, ontap: ()=>Navigator.push(context,
       MaterialPageRoute(builder: (context)=>Foodpage(food: food),
       ),
       ),
       );
    });
  }).toList();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: Mydarwer(),

      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          Mysliverapp(title:  Tabbar(tabController: _tabController),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
              ),

              // my current location

              MyCurrentLoc(),

              //descerption

              Descrptionbox(),
              
            ],
            
          )
          ),
        ],
        body: Consumer<Restart>(builder:(context,restarutarnt,child)=>TabBarView(
          controller: _tabController,
          children: getfood(restarutarnt.menu))
              
          
          
        )),
        
    );
  }
}
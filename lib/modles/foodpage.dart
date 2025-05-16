import 'package:althafapp/button.dart';
import 'package:althafapp/modles/food.dart';
import 'package:althafapp/modles/restart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Foodpage extends StatefulWidget {

  final Food food;
  final Map<addons,bool> selectaddons={};


    Foodpage({
    super.key,
    required this.food,
    
    }){

    for(addons addon in food.availableAddons){
      selectaddons[addon]=false;
    }

    }
  @override
  State<Foodpage> createState() => _FoodpageState();
}


class _FoodpageState extends State<Foodpage> {
 
 void addtocart(Food food, Map<addons,bool> selectaddons){

  //  close the current food page to go back menu
  Navigator.pop(context);


  // formate the slected  addons
  List<addons> currentlyselectedaddons=[];

  for (addons addon in widget.food.availableAddons) {
    if(widget.selectaddons[addon]==true){
      currentlyselectedaddons.add(addon);
    }
    
  }
  // add to cart

  context.read<Restart>().addtocart(food, currentlyselectedaddons);

}


  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [



        Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
        
            //food image
            Image.asset(widget.food.imapath),
        
        
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
              //food name
              Text(widget.food.name,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
        
               //food price
               Text("₹ ${widget.food.price}",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
                ),
               ),
        
               const SizedBox(height: 10),
              
              
              //food descrption
               Text(widget.food.descerption),
               
               SizedBox(height: 10),
        
               Divider(color: Theme.of(context).colorScheme.secondary,),
        
               SizedBox(height: 10),
        
        
              //addons
        
        
              
               Text("Add-ons", style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
               ),),
        
               
              
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8),),
             
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: widget.food.availableAddons.length,
                  itemBuilder:(context,index){
                
                    // get indivual addon
                    addons addon=widget.food.availableAddons[index];
                
                
                    //return checkbox ui
                
                  return CheckboxListTile(
                    title: Text(addon.name),
                    subtitle: Text("₹${addon.price}",style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),),
                    value: widget.selectaddons[addon],
                     onChanged: (bool ? value){
                      setState(() {
                        widget.selectaddons[addon]=value!;
                      });
                
                  });
                }),
              ),
              
              // button addto cart
           

             
              // Text(widget.food.name),
                ],
              ),
            ),
              
               Button(
                text: "Add to Cart",
                 onTap: ()=>addtocart(widget.food, widget.selectaddons)),

              SizedBox(height: 25),
        
          ],
        ),
      ),
    ),

    // back button

    SafeArea(
      child: Opacity
      (opacity: 0.6,
      child: Container(
        margin: EdgeInsets.only(left: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: (){
          Navigator.pop(context);

        }, icon: Icon(Icons.arrow_back_ios_new_rounded)
        ),
      ),),)
      ],
    );
  }
}
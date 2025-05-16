import 'package:althafapp/modles/cart_item.dart';
import 'package:althafapp/modles/foodpage.dart';
import 'package:althafapp/modles/my_quantiy_selctor.dart';
import 'package:althafapp/modles/restart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTitle extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTitle({
    super.key,
    required this.cartItem,
    });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restart>(builder: (contexet,restaurant,child)=>
    Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),

      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                //food image
            
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GestureDetector(
                    onLongPress: (){
                       Navigator.push(context, MaterialPageRoute(builder: (contexet)=>Foodpage(food: cartItem.food,)));
                    },
                    child: Image.asset(
                      cartItem.food.imapath,
                      height: 100,
                      width: 100,
                      ),
                  ),
                    ),
            
                    SizedBox(width: 10),
            
                // name and price
            
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //food name
                    Text(cartItem.food.name),
            
                    // food price 
                    Text("₹${cartItem.food.price}",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),),

                    SizedBox(height: 10),

                     MyQuantiySelctor(
                  food: cartItem.food,
                   onIcrement:(){
                     restaurant.addtocart(cartItem.food, cartItem.selectaddons);
                   
                   } ,
                    ondecrement: (){
                       restaurant.removecart(cartItem);
                    },
                     quantity: cartItem.quantity,
                     ),

                     SizedBox(height: 10),
                    
                  ],
                ),

               
            
                //increment or decremnt quantity
            
               
              ],
            ),
          ),

          //addons
          SizedBox(
            height: cartItem.selectaddons.isEmpty? 0 : 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, bottom: 10,right: 10),
                 children: cartItem.selectaddons.
                 map(
                  (addons)=>Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                    label: Row(
                    children: [
                    
                        Text(addons.name),
                    
                        // addon price
                    
                        Text('( ₹${addons.price} )'),
                    ],
                    ),
                    
                    shape: StadiumBorder(
                      side: BorderSide(color: Theme.of(context).colorScheme.primary),
                    ),
                                    onSelected: (value){},
                                    backgroundColor: Theme.of(context).colorScheme.secondary,
                                    labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 12,
                                    ),
                    ),
                  ),
                 ).toList(),
                 
            ),
          ),
        ],
      ),
    ),
    );
  }
}
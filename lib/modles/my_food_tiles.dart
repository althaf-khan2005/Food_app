import 'package:althafapp/modles/food.dart';
import 'package:flutter/material.dart';

class MyFoodTiles extends StatelessWidget {
  final Food food;
  final void Function ()? ontap;

  const MyFoodTiles({
    super.key,
    required this.food,
    required this.ontap,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
            
                // text food details
            
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text("₹ ${food.price}",style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),),

                    SizedBox(height: 10),


                    Text(food.descerption,style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),),
            
                  ],
                ),
                ),

                const SizedBox(width: 15),
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(food.imapath,height: 120)),
              ],
            ),
          ),
        ),

// divde the line
        Divider(color: Theme.of(context).colorScheme.tertiary,
        endIndent: 25,
        indent: 25,),

      ],
    );
  }
}
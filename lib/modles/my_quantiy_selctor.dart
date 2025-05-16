import 'package:althafapp/modles/food.dart';
import 'package:flutter/material.dart';

class MyQuantiySelctor extends StatelessWidget {

  final int quantity;
  final Food food;
  final VoidCallback onIcrement;
  final VoidCallback ondecrement;


  const MyQuantiySelctor({
    super.key,
    required this.food,
    required this.onIcrement,
    required this.ondecrement,
    required this.quantity,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          // decrease button

          GestureDetector(
            onTap: ondecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          //quantity count

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  quantity.toString(),
                  ),
              ),
            ),),

          //increase button

           GestureDetector(
            onTap: onIcrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
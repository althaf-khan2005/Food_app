import 'package:althafapp/modles/restart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyRecipt extends StatelessWidget {
  const MyRecipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 25, right: 25,bottom: 25,top: 50),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Thank You for your Order!"),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(25),
            child: Consumer<Restart>(builder: (context,resturant,child)=> 
            Text(resturant.displaycartrecipt())),
          ),

            SizedBox(height: 25),

               Text("Estimed delivery time is: 4:10 PM" ),
        ],
      ),
    ),
    );
    
  }
}
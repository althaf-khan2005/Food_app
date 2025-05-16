import 'package:flutter/material.dart';

class Descrptionbox extends StatelessWidget {
  const Descrptionbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),

       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // develiry free
          Column(children: [
          Text("50.0"),
          Text("Devliary fee"),
          ],
          ),
       
           // develiry time
           Column(children: [
          Text("15-30 min"),
          Text("Devliary time"),
          ],
          ),
        ],
       ),
     
    );
  }
}
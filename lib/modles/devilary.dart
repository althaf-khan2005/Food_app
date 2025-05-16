import 'package:althafapp/database.dart';
import 'package:althafapp/modles/my_recipt.dart';
import 'package:althafapp/modles/restart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Devilary extends StatefulWidget {
  const Devilary({super.key});

  @override
  State<Devilary> createState() => _DevilaryState();
}

class _DevilaryState extends State<Devilary> {

  Database db=Database();



   @override
void initState() {
  super.initState();

  // Submit the order to the database
  String recipts = context.read<Restart>().displaycartrecipt();
  db.saveordertodbs(recipts);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Devlivery in Progress..."),
      backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildbotoomnavbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyRecipt(),
          ],
        ),
      ),


    );
  }

  //cusstom bottom nav bar
  Widget _buildbotoomnavbar(BuildContext context){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)),

      ),

      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),

            child: IconButton(onPressed: (){

            }, icon: Icon(Icons.person),
            ),
          ),
             
             SizedBox(width: 10),

          // devilary detials

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Person",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,

              ),),
              Text("Driver",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                
              ),
              ),

            ],
          ),

          const Spacer(),
 



          Row(
            children: [

              // call button
              Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),

            child: IconButton(onPressed: (){

            }, icon: Icon(Icons.message,
            color: Theme.of(context).colorScheme.primary,),
            ),
          ),

          SizedBox(width: 10),

          // mesage button

          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),

            child: IconButton(onPressed: (){

            }, icon: Icon(Icons.call,
            color: Colors.green,),
            ),
          ),

            ],
          ),
        ],
      ),
    );
  }
}
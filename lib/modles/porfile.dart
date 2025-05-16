import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Porfile extends StatelessWidget {
   Porfile({super.key});


  final Firebase =FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        "Profile",
        
      ),
      centerTitle: true,
      elevation: 0,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Theme.of(context).colorScheme.inversePrimary),
                  image: DecorationImage(
                    image: AssetImage("lib/image/burger.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                  
                ),
              
              ),
            
            ),


             // user

             
          ),
         // SizedBox(height: 10),
          Text(Firebase!.email.toString()),


          Spacer(),

           Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Create a account",style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,

                      
                    ),
                    ),
                    Icon(Icons.person_4_rounded,
                    ),
                  ],
            
                ),
            
              ),
            
              SizedBox(height: 10),
            ],
           ),
        ],
      ),
    );
  }
}
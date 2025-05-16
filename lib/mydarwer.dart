import 'package:althafapp/authservice.dart';
import 'package:althafapp/darawertext.dart';
import 'package:althafapp/modles/porfile.dart';
import 'package:althafapp/setting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Mydarwer extends StatelessWidget {
   Mydarwer({super.key});

     final firebase=FirebaseAuth.instance.currentUser;

  void logout() {
    final authservices=Authservices();

    authservices.logout();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,

      child:Column(
        children: [
          
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(Icons.lock_open,
            size: 80,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            )),

            Darawertext(text: "Home",
             icon: Icons.home,
             ontap: (){
              Navigator.pop(context);
            },),

            Darawertext(text: "Profile",
             icon: Icons.person_4_rounded,
             ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Porfile()));
            },),


             Darawertext(text: "Settings",
             icon: Icons.settings,
             ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
            },),



            Spacer(),

             Darawertext(text: "Logout",
             icon: Icons.logout,
             ontap: (){
              logout();
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },),

            const SizedBox(height: 25),


        ],
      ),
    );
  }
}
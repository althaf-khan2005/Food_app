import 'package:althafapp/authservice.dart';
import 'package:althafapp/button.dart';
import 'package:althafapp/textfiled.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Registartion extends StatefulWidget {

  final void Function() ? ontap;

 
   const Registartion({super.key,required this.ontap});

  @override
  State<Registartion> createState() => _RegistartionState();
}

class _RegistartionState extends State<Registartion> {
  final TextEditingController email=TextEditingController();

  final TextEditingController pass=TextEditingController();

  final TextEditingController conpass=TextEditingController();

   void create( BuildContext context) async{
     final authservices=Authservices();

 
     
     
     if(pass.text==conpass.text){
      try{



        await authservices.create(
        email.text.trim(),
         pass.text.trim(),
         );

     //  adduserdetail(email.text.trim());
         


     }
     catch (e){
      showDialog(
        context: context,
         builder: (context)=>AlertDialog(
          title: Text("Error"),
          content: Text(e.toString()),
         ),
         );
   
    
   }
     }

     //password doesnot match

    else{  showDialog(
        context: context,
         builder: (context)=>AlertDialog(
          title: Text("Error"),
          content: Text("Password does not match"),
         ),
         );
    }
    }

Future adduserdetail(String email) async {
  await FirebaseFirestore.instance.collection("users").add({
    'email':email,
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(height: 17),

            Text("Hello there Welcome back!",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),

            SizedBox(height: 2),

            Textfied(hintext:"Email",
            ob: false,
            controller: email,
            ),

            SizedBox(height: 10),

            Textfied(hintext:"Passoword",
            ob: true,
            controller: pass,
            ),

             SizedBox(height: 10),

            Textfied(hintext:"Confirm Passoword",
            ob: true,
            controller: conpass,
            ),

            SizedBox(height: 25),
            
            Button(text: "Register",
            onTap:()=>create(context),
            ),

            SizedBox(height: 25),


              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text("Already have an account?",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),),
                GestureDetector(
                  onTap:widget.ontap,
                  child: Text(" Login",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),),
                )
              ],
            ),
            

          ],
        ),
      );
    
  }
}
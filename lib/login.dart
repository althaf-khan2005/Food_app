import 'package:althafapp/authservice.dart';
import 'package:althafapp/button.dart';
import 'package:althafapp/textfiled.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {

 final void Function()? ontap;

   const Login({super.key,required this.ontap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();

  final TextEditingController pass = TextEditingController();

  @override
 


   void login( BuildContext context) async{

    final auths=Authservices();

    try{
      

     await  auths.singIn(
        email.text.trim(),
         pass.text.trim(),
         );

    

  
    } catch(e){
      
      showDialog(
        context: context,
         builder:(context)=>AlertDialog(
          title: Text("Error"),
          content: Text(e.toString()),

        ),

      );
    }


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

            SizedBox(height: 25),

            Textfied(hintext:"Email",
            ob: false,
            controller: email,
            ),

            SizedBox(height: 10),

            Textfied(hintext:"Passoword",
            ob: true,
            controller: pass,
            ),

            SizedBox(height: 25),
            
            Button(text: "Login",
            onTap: () => login(context),
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text("I don't have a account?",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),),
                GestureDetector(
                  onTap:widget.ontap,
                  child: Text(" Create account",
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
import 'package:althafapp/home.dart';
import 'package:althafapp/login%20or%20regesti.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';





class  Auth extends StatelessWidget {
  const  Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context ,snapshots){
         if (snapshots.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
        if(snapshots.hasData){
          return Home();
        }
        else{
          return loginor();
        }
       }),
    );
     
}}
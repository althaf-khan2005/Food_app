import 'package:althafapp/login.dart';
import 'package:althafapp/regerst.dart';
import 'package:flutter/material.dart';

class loginor extends StatefulWidget {
  const loginor({super.key});

  @override
  State<loginor> createState() => _loginorState();
}

class _loginorState extends State<loginor> {

  bool showlog=true;

  void toogepage(){
    setState(() {
      showlog=!showlog;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showlog){
      return Login(ontap: toogepage);
    }
    else{
      return Registartion(ontap: toogepage);
    }
  }
}
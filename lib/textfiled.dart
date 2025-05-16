import 'package:flutter/material.dart';

class Textfied extends StatelessWidget {

  final String hintext;
  final TextEditingController controller;
  final  bool ob;
  
  const Textfied({
    super.key,
    required this.hintext,
    required this.ob,
    required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: controller,
        obscureText: ob,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Theme.of(context).colorScheme.primary,
          ),
      
        ),
      //  fillColor: Colors.white,
      //  filled: true,
        hintText: hintext,
        hintStyle: TextStyle(color: Colors.grey),
      ),
      ),
    );
    
  }
}
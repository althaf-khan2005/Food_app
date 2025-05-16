import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final  void Function ()?onTap;

  const Button({
    super.key,
    required this.text,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return 
        GestureDetector(
          onTap: onTap,
          child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 25),
          
            child: Center(
              child: Text(text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          
              
              ),
        );
  }
}
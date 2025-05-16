import 'package:althafapp/theme/themeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'Settings',
      ),centerTitle: true,
      elevation: 0,
      ),
     // backgroundColor: Theme.of(context).colorScheme.background,

     body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.only(left: 25,top: 10,right: 25),
          padding: EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text("Dark Mode",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold),
               ),
          
               CupertinoSwitch(value:Provider.of<Themeprovider>(context,)
               .isdark, onChanged: (value)=>Provider.of<Themeprovider>(context, listen: false).themechage(),
             
               ),
             ],
          ),
        ),
      
      ],
     ),
    );
  }
}
import 'package:flutter/material.dart';

class Darawertext extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? ontap;
  const Darawertext({
    super.key,
    required this.icon,
    required this.ontap,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 25),
      child: ListTile(
        title: Text(text,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
        leading: Icon(icon ,color: Theme.of(context).colorScheme.primary,),
        onTap: ontap,
      ),
    );
       
  }
}
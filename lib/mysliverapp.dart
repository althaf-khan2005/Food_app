import 'package:althafapp/modles/cart_pages.dart';
import 'package:flutter/material.dart';

class Mysliverapp extends StatelessWidget {
  final Widget child;
  final Widget title;

   const Mysliverapp({super.key,
   required this.child,
   required this.title,
   });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Center(child: Text("Sunset Dinner")),
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPages()));
        },icon: Icon(Icons.shopping_cart),),
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding:EdgeInsets.only(bottom: 50.0), 
          child:child,
          ),
        title: title,
        centerTitle: true,
        titlePadding: EdgeInsets.only(left: 0 ,right: 0,top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
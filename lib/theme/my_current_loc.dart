import 'package:althafapp/modles/restart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCurrentLoc extends StatelessWidget {
   MyCurrentLoc({super.key});


  final textController=TextEditingController();


  void openloaction (BuildContext context){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Your Loaction"),
      content: TextField(decoration: InputDecoration(hintText: "Search Addreas.."),
      controller: textController,
      ),
      actions: [
        MaterialButton(onPressed: (){
       Navigator.pop(context);
        }, child: Text("Cancel"),),

      // cancle
        MaterialButton(onPressed: (){
        String newaddrease=textController.text;
        context.read<Restart>().updateaddrease(newaddrease);
        Navigator.pop(context);
      // save
        }, child: Text("Save"),)
      ],
    ));

  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now",style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),),
          GestureDetector(
            onTap: ()=>openloaction(context),
            child: Row(
              children: [
                  Consumer<Restart>(builder: (context,restaurnat,child)=>Text(

                  restaurnat.Devilaryadrres,
                // addreas
                  
                 style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,),
                ),
                  ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
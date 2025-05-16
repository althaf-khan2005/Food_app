import 'package:althafapp/button.dart';
import 'package:althafapp/modles/my_cart_title.dart';
import 'package:althafapp/modles/payment_page.dart';
import 'package:althafapp/modles/restart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPages extends StatelessWidget {
  const CartPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restart>(
      builder:(context,reustart,child){
      // cart

      final usercart=reustart.cart;

      // ui
      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear cart button

            IconButton(onPressed: (){
                showDialog(
                  context: context,
                   builder: (context)=>AlertDialog(
                    title: Text("Are your sure you want to  clear the cart?"),
                    actions: [
                      //cancle button

                      TextButton(onPressed: (){

                        Navigator.pop(context);

                      }, child: Text("Cancel"),),

                      // yes button

                       TextButton(onPressed: (){

                           Navigator.pop(context);
                           reustart.clearcart();

                      }, child: Text("Yes"),),
                    ],
                   ),);
                   
            }, icon: Icon(Icons.delete)),
          ],
        ),

        body: Expanded(
          child: Column(
            children: [
          
              // list of cart
              usercart.isEmpty? Expanded(
          
                child: Center(
                  child: Text("Cart is Empty...")),
              ) 
              : Expanded(
                child: ListView.builder(
                  itemCount: usercart.length,
                  itemBuilder: (context, index) {
          
                    // get indivuidual cart item
                    final CartItem=usercart[index];
          
                    return MyCartTitle(cartItem: CartItem);
                  },
                  ),
                  ),
          
                    // button to pay
          
                  Button(text: "Go to Checkbox", onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                  }),

                  SizedBox(height: 25),
                 
            ],
                  ),
        ),

              
                
                
      
        );

    


      }
      );
  }
}
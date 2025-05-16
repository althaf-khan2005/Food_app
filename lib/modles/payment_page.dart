import 'package:althafapp/button.dart';
import 'package:althafapp/modles/devilary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  GlobalKey<FormState> formkey= GlobalKey<FormState>();

  String cardnumber="";
  String expiredate="";
  String  cardHolderName="";
  String cvvCode="";
  bool isCvvFoused=false;


// user want to pay

void usertaaped(){
  if(formkey.currentState!.validate()){
    //only show the the form is vaild
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Confirm Payement"),
      content: SingleChildScrollView(child:
      ListBody(
        children: [
          Text("Card Number: $cardnumber"),
          Text("Expiry Date: $expiredate"),
          Text("Card Holder name: $cardHolderName"),
          Text("CVV: $cvvCode"),
        ],
      ) ,),

      actions: [
        // cancle button

        TextButton(onPressed: (){

          Navigator.pop(context);

        }, child: Text("Cancel")),


        
        TextButton(onPressed: (){
           Navigator.pop(context);

          Navigator.push(context, MaterialPageRoute(builder: (context)=>Devilary()));

        }, child: Text("Yes")),
      ],
    ));
  }

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Checkout")),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //credit card
        
            CreditCardWidget(
              cardNumber: cardnumber,
               expiryDate: expiredate, 
               cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                 showBackView:isCvvFoused,
                  onCreditCardWidgetChange: (p0){},
                  ),
        
        
            // credit card form 
        
            CreditCardForm(
              cardNumber: cardnumber,
               expiryDate: expiredate,
                cardHolderName: cardHolderName,
                 cvvCode: cvvCode,
                  onCreditCardModelChange: (data){
                    setState(() {
                      cardnumber=data.cardNumber;
                      expiredate=data.expiryDate;
                      cardHolderName=data.cardHolderName;
                      cvvCode=data.cvvCode;
                    });
                  }, 
                  formKey: formkey,
                  ),
        
                //  Spacer(),
                 SizedBox(height: 120),
        
                  Button(text: "Pay now",
                   onTap: (){
                    usertaaped();
                   }),
        
                   SizedBox(height: 25),
        
          ],
        ),
      ),
    );
  }
}
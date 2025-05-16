import 'package:althafapp/modles/cart_item.dart';
import 'package:althafapp/modles/food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restart  extends ChangeNotifier{
   
  final List<Food> _menu=[
    
    
    Food(
      name: "Classic CheeseBurger",
       descerption: "Beef, chicken, or vegetarian patties served in a bun with various toppings like cheese, lettuce, tomato, and sauces.", 
       imapath: "lib/image/burger.jpeg",
        price: 199, 
        catetory: FoodCatetory.Burger,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

   
          
    Food(
      name: "Veg CheeseBurger",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/vegchess.jpeg",
        price: 99, 
        catetory: FoodCatetory.Burger,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

             Food(
      name: "Veg Burger",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/veg.jpeg",
        price: 120, 
        catetory: FoodCatetory.Burger,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

          Food(
      name: "Milk Shake",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/milkshake.jpeg",
        price: 199, 
        catetory: FoodCatetory.Drinks,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),


            Food(
      name: "Non-veg Sandwiches",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/non.jpeg",
        price: 199, 
        catetory: FoodCatetory.Saldas,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),


          Food(
      name: "Black Forest",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/forest.jpeg",
        price: 299, 
        catetory: FoodCatetory.Dessert,
         availableAddons: [
          addons(name: "Extra Cream", price: 30),
          addons(name: "Cherry", price: 25),
          addons(name: "Bacon", price: 55),
         ],
         ),


          Food(
      name: "Black Icecream",
       descerption: " A frozen dessert made from milk, cream, sugar, and flavorings", 
       imapath: "lib/image/black.jpeg",
        price: 199, 
        catetory: FoodCatetory.Dessert,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

         
          Food(
      name: "Hot Dog",
       descerption: " A cooked sausage served in a long bun, often with condiments like mustard, ketchup, and relish.",
       imapath: "lib/image/hotdog.jpeg",
        price: 199, 
        catetory: FoodCatetory.Saldas,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),


       Food(
      name: "Tacos",
       descerption: "Orn or wheat tortillas folded or rolled around a filling, such as seasoned meat, beans, or vegetables, often with salsa, cheese, and other toppings.", 
       imapath: "lib/image/taocs.jpeg",
        price: 199, 
        catetory: FoodCatetory.Saldas,
         availableAddons: [
          addons(name: "Extra cheese", price: 40),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

          Food(
      name: "Samosa",
       descerption: "A fried or baked pastry with a savory filling, often spiced potatoes, onions, and peas.", 
       imapath: "lib/image/sam.jpeg",
        price: 45, 
        catetory: FoodCatetory.Sides,
         availableAddons: [
          addons(name: "Extra Samosa", price: 40),
          addons(name: "Sacues", price: 10),
          addons(name: "Bacon", price: 55),
         ],
         ),

              Food(
      name: "Onion Rings",
       descerption: "liced onions that are battered and deep-fried until crispy.", 
       imapath: "lib/image/onion.jpeg",
        price: 60, 
        catetory: FoodCatetory.Burger,
         availableAddons: [
          addons(name: "Extra Onion", price: 15),
          addons(name: "Sacues", price: 10),
          addons(name: "Bacon", price: 30),
         ],
         ),

            Food(
      name: "Soft Drink",
       descerption: "Carbonated and sweetened beverages.",
       imapath: "lib/image/coc.jpeg",
        price: 79, 
        catetory: FoodCatetory.Drinks,
         availableAddons: [
          addons(name: "Extra Ice", price: 20),
          addons(name: "Coco", price: 25),
          addons(name: "Glass", price: 10),
         ],
         ),

         Food(
      name: "Chicken Nuggets",
       descerption: "Small, bite-sized pieces of chicken that are breaded and fried.", 
       imapath: "lib/image/chicken.jpeg",
        price: 149, 
        catetory: FoodCatetory.Burger,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

          
          Food(
      name: "Pav Bhaji",
       descerption: "A thick vegetable curry (bhaji) served with buttered bread rolls (pav).", 
       imapath: "lib/image/pav.jpeg",
        price: 99, 
        catetory: FoodCatetory.Saldas,
         availableAddons: [
          addons(name: "Extra Bhaji", price: 30),
          addons(name: "Masal", price: 15),
          addons(name: "Bacon", price: 55),
         ],
         ),



          Food(
      name: "French Fries ",
       descerption: "Hinly sliced potatoes that are deep-fried and often seasoned with salt", 
       imapath: "lib/image/fire.jpeg",
        price: 150, 
        catetory: FoodCatetory.Sides,
         availableAddons: [
          addons(name: "Extra Chips", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),


          Food(
      name: "Vanial Shake",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/venial.jpeg",
        price: 99, 
        catetory: FoodCatetory.Drinks,
         availableAddons: [
          addons(name: "Extra Ice", price: 20),
          addons(name: "Vanial", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

          Food(
      name: "Pizza Hut",
       descerption: "A flatbread typically topped with tomato sauce, cheese, and various vegetables, meats, or other toppings, then baked.", 
       imapath: "lib/image/pizza.jpeg",
        price: 499, 
        catetory: FoodCatetory.Sides,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

          Food(
      name: "Veg Pizza",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/non-veg.jpeg",
        price: 129, 
        catetory: FoodCatetory.Sides,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

          Food(
      name: "Manago Juice",
       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/mango.jpeg",
        price: 99, 
        catetory: FoodCatetory.Drinks,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),
           

 
    Food(

      name: "Saldas",

       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/burger.jpeg",
        price: 145, 
        catetory: FoodCatetory.Burger,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

         Food(

      name: "Browny Forest",

       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/cake.jpeg",
        price: 230, 
        catetory: FoodCatetory.Dessert,
         availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

         Food(

      name: "Orange Juice",

       descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
       imapath: "lib/image/juice.jpeg",
        price: 90, 
        catetory: FoodCatetory.Drinks,
         availableAddons: [
          addons(name: "Extra Ice", price: 10),
          addons(name: "Avoado", price: 45),
          addons(name: "Bacon", price: 55),
         ],
         ),

         Food(
           
        name: "Sandwithch",
        descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
        imapath: "lib/image/sandwithch.jpeg",
         price: 145, 
         catetory: FoodCatetory.Sides,
          availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Onion ", price: 25),
          addons(name: "Addons", price: 55),
         ],
         ),

           Food(
           
        name: "Salads",
        descerption: "A juuicy beef patty with melted cheddar, lettuce , tomaoc", 
        imapath: "lib/image/salad.jpeg",
         price:45, 
         catetory: FoodCatetory.Saldas,
          availableAddons: [
          addons(name: "Extra cheese", price: 50),
          addons(name: "Onion ", price: 25),
          addons(name: "Addons", price: 55),
         ],
         ),



// salda

       
  ];
//user cart

  final List<CartItem> _cart=[];
  List<Food> get menu => _menu;
  List<CartItem> get cart=> _cart;

  String get Devilaryadrres=> _deliviryaddrease;


  
  // devilary addrrease
  String _deliviryaddrease ="99 Coimabtore";

  //upaadte the devilary addrease

  void updateaddrease(String addrease){
    _deliviryaddrease=addrease;
    notifyListeners();

  }



void addtocart(Food food,List<addons> selectaddons){
  // see if there is cart items
  CartItem? cartItem= _cart.firstWhereOrNull((item) {

  // check the food item same 
  bool issamefood =item.food ==food;

  bool issameaddons =ListEquality().equals(item.selectaddons, selectaddons);

  return issamefood && issameaddons;


  });
 
 // aleready exits what to increase
  if(cartItem!=null){
    cartItem.quantity++;
  }
   
   // other wise add new cart itmes
   else{
    _cart.add(
      CartItem(
        food: food,
         selectaddons: selectaddons,
         ));
   }
   notifyListeners();
}
 
 //remove the cart
  
  void removecart(CartItem cartitem){
    int cartindex= _cart.indexOf(cartitem);

    if(cartindex!=-1){
      if(_cart[cartindex].quantity>1){
        _cart[cartindex].quantity--;
      } else{
        _cart.removeAt(cartindex);
      }
    }
    notifyListeners();
  }

  //get the total price

  double gettotalprice(){
    double total =0.0;

    for (CartItem cartItem in _cart){
      double itemtotal =cartItem.food.price;

      for(addons addon in cartItem.selectaddons){
        itemtotal+=addon.price;
      }
      total+=itemtotal * cartItem.quantity;
    }
    return total;
  }


   // get total number of itmes in cart

   int gettotalitmecount(){
    int totalitemcount=0;

    for(CartItem cartItem in _cart){
      totalitemcount+=cartItem.quantity;
    }
    return totalitemcount;
   }

   // clear cart

   void clearcart(){
    _cart.clear();
    notifyListeners();
   }

   // generate a receipt

   String displaycartrecipt(){
    final  recipt =StringBuffer();
    recipt.writeln("Here's your Recipt.");
    recipt.writeln();

     // format the date to include up to second only

   String formatteddata= DateFormat("yyy-MM-dd  HH:mm:ss").format(DateTime.now());

   recipt.writeln(formatteddata);
   recipt.writeln();
   recipt.writeln("------------");

   for(final CartItem in _cart){
    recipt.writeln("${CartItem.quantity} x ${CartItem.food.name} -${_formatprice(CartItem.food.price)}");
    if(CartItem.selectaddons.isEmpty){
      recipt.writeln(" Add-ons: ${_formataddons((CartItem.selectaddons))}");
    }

    recipt.writeln();
   }
   recipt.writeln("------------");
   recipt.writeln();
   recipt.writeln("Total Items: ${gettotalprice()}");
   recipt.writeln("Total Price: ${_formatprice(gettotalprice())}");
    recipt.writeln();
     recipt.writeln("Delivering to: $Devilaryadrres");


  return  recipt.toString();
   }

  
  // format double value into money

  String _formatprice(double price){
    return "₹${price.toStringAsFixed(2)}";
  }


  // format list of addons innto a string sumarry
  String _formataddons(List<addons> addon){
    return addon.map((addon)=>"${addon.price} (${_formatprice(addon.price)})").
    join(", ");
  }


}
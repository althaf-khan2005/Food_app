import 'package:althafapp/modles/food.dart';

class CartItem {
  Food food;
  List<addons> selectaddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectaddons,
     this.quantity=1,
  });
  
  double get totalprice{
    double addonspice= selectaddons.fold(0, (sum ,addons)=>sum+addons.price);
    return (food.price + addonspice) *quantity;
  }
}
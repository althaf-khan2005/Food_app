
class Food {
  final String name;
  final String descerption;
  final String imapath;
  final double price;
  final FoodCatetory catetory;

  List<addons> availableAddons;

  Food ({
    required this.name,
   required this.descerption,
   required this.imapath,
   required this.price,
   required this.catetory,
   required this.availableAddons,
   });

 } // food catcategtor

   enum FoodCatetory{
    Burger,
    Saldas,
    Sides,
    Drinks,
    Dessert,
   }
// fo0d addons

class addons{
   String name;
  double price;

  addons({required this.name,
  required this.price,
  });
}
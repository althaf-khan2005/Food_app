import 'package:cloud_firestore/cloud_firestore.dart';

class Database {

  // add the order in firebase

  final CollectionReference order=FirebaseFirestore.instance.collection('orders');

  //svae the order in dbs
  Future<void> saveordertodbs(String recipt) async{
    await  order.add({
      'date':DateTime.now(),
      'orders':recipt,
      // add if  future we want

    });
  
  }
}
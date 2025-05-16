
import 'package:firebase_auth/firebase_auth.dart';

class Authservices {

  final  FirebaseAuth _auth= FirebaseAuth.instance;





    // get current user

    User? getcurrentuser() {
      return _auth.currentUser;
    }

  // Login method

  Future<UserCredential> singIn( String email,  password)async{
    try{
       UserCredential userCredential=await _auth.signInWithEmailAndPassword(
        email: email,
         password: password
         );

          

         return userCredential;
    } on FirebaseAuthException catch(e){
      throw(e.code);
    }
      
    
  
  }

  //logout methods

  Future<void> logout () async{
    return await _auth.signOut();


  }

   // create a account 

   Future<UserCredential> create( String email, password) async{
    try{
    UserCredential userCredential =await _auth.createUserWithEmailAndPassword(
     email: email, 
      password: password,
      );

     // await userCredential.user?.sendEmailVerification(); 
      return userCredential;
   }    on FirebaseAuthException catch(e){
      throw(e.code);
   }
   }
  
  
}
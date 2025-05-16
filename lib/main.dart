import 'package:althafapp/auth.dart';
import 'package:althafapp/firebase_options.dart';
import 'package:althafapp/modles/restart.dart';
import 'package:althafapp/theme/themeprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future <void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences pref = await SharedPreferences.getInstance();
  bool isDark = pref.getBool("isdark") ?? false;

   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
 

  runApp(
     MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>Themeprovider(isDark: isDark)),

      //resturantent modify
       ChangeNotifierProvider(create: (context)=>Restart()),
     ],
     child: Myapp(),
     ),    );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<Themeprovider>(context).themedata,
      home:Auth(),
        
        
      );

  }
}
import 'package:althafapp/theme/darkmode.dart';
import 'package:althafapp/theme/ligthmode.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Themeprovider  with ChangeNotifier{
 
 // thiis foor store the  color
  late ThemeData _themeData;

   // this is learned [ThemeData _themeData=  lightMode];
    

  ThemeData get themedata=>_themeData;


  bool get isdark=> _themeData ==darkmode;



Themeprovider({required bool isDark}) {
    _themeData = isDark ? darkmode : lightMode;
  }


  set themedata(ThemeData value){
    _themeData =value;
    notifyListeners();
  
  }


 Future<void> themechage() async {
   SharedPreferences pref= await SharedPreferences.getInstance();
   if(_themeData ==lightMode){
    themedata=darkmode;
    pref.setBool("isdark", true);
   } else{
    themedata=lightMode;
    pref.setBool("isdark", false);
   }
   notifyListeners();
 }
 
  
  
  

}
// themedata themedata =lightmode;
// themedata get the-> themdata;
//  bool get dark-> themedata==darkmode
//set(themedata themedata){
// themedata=themdata;/
// if(_themedata=lightmode)
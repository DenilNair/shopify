import 'package:flutter/material.dart';

class currNav{
 static int nav=0;
 static int getCurNav(){
   //print('curr nav '+nav.toString());
   return nav;
 }

 static void  setCurNav(int navv){

   nav=navv;
  // print('set nav '+nav.toString());
 }
}
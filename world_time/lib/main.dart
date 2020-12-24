import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:world_time/pages/chose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // routes
    initialRoute:'/home',  // from which the screeen strt
      routes:{
      '/':(context)=>Loading(),
      '/home':(context)=>Home(),
      '/location':(context)=>ChoseLocation(),
    },
  ));
}



















































































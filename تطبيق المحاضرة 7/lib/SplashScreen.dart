

 import 'dart:async';

import 'package:lect_7/home.dart';
import 'package:lect_7/main.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState()=>SplashScreenState();

}
class SplashScreenState extends State<SplashScreen>{
@override
  void initState() {
   Timer(Duration(seconds: 3), () {

  //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => home(),), (route) => false);

   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D66BD),
      body:
      Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        CircleAvatar(
        radius:50 ,
        backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.h8AFNufNaqtV2Cf3CNbHMwHaHa?rs=1&pid=ImgDetMain"),)],)),);
  }
}

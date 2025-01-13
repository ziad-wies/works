import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled8/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3),(){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>home(),)
    ,(route) => false,);
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 2, 32, 29),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/images/بنك.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            " ziad bank",
            style: TextStyle(decoration: TextDecoration.none),
          )
        ],
      ),
    );
  }
}

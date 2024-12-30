
import 'package:flutter/material.dart';
import 'package:untitled8/drawr.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
          appBar: AppBar(),
          drawer: mydrawer(),
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 50,
      ),

      )),


    
    
    );


  }
}

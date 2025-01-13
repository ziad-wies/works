
import 'package:flutter/material.dart';
import 'package:untitled8/drawr.dart';

void main() {
  runApp( const home());
}

class home extends StatelessWidget {
  const home({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
          appBar: AppBar(
            title: Text("home"),
            backgroundColor: Colors.teal,
          ),
          drawer: mydrawer(),
      bottomNavigationBar: Container(
        color: Colors.teal,
        height: 50,
      ),

      )),


    
    
    );


  }
}

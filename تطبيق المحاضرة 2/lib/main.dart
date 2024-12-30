import 'package:flutter/material.dart';

void main() {
  Text t = const Text("Hello flutter  in ALJ", textAlign: TextAlign.center,
    textDirection: TextDirection.rtl,
    style: TextStyle(
        color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold),);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("appBar"),),
      body: Align(alignment: Alignment.topCenter, child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), bottomRight: Radius.circular(40))
        ),
        child: Center(child: t), width: 200, height: 200,)),
      bottomNavigationBar: t,
    ),
  ));
}









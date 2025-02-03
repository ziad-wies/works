import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/student_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentListScreen(),
    );
  }
}

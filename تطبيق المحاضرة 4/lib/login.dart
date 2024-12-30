

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/drawr.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("login"),),

    drawer: mydrawer(),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/counterprovider.dart';

class counterwidget extends StatelessWidget {
  const counterwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context);
    return Text(
      "${count.c}",
      style: TextStyle(fontSize: 20),
    );
  }
}

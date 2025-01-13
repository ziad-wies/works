import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/counterprovider.dart';
import 'package:provider1/countwidget.dart';

void main() => runApp(ChangeNotifierProvider<CounterProvider>(
  create: (_) =>CounterProvider() ,
  child: MaterialApp(
        home: Counter(),
      ),
));

int n = 0;

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context,listen: false);
    print("n:${n++}");
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count.counter(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "test 1",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
         
         counterwidget(),
         SizedBox(
              height: 5,
            ),
         
            Text(
              "test 3",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "مكتبة provider تستعمل لادارة الحالة بطريقة فعالة بديلا عن statafullwidget وتستخدم مفهوم changnotifier لتحديث واجهات المستخدم عند تغيير البيانات بمعنى انه لا تحدث جميع عناصر الواجهة وانما العنصر الذي تم عليه التعديل,"
              ,style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

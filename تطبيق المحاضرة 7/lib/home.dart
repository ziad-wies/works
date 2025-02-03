import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("ListView"),
        ),
        body: ListView(
          shrinkWrap: true,
          //scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              title: Text("userName"),
              subtitle: Text("phone number"),
              tileColor: Colors.amber,
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.person),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("image"),
              subtitle: Text(" image info"),
              tileColor: Colors.amber,
              trailing: Icon(Icons.check),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.jpg"),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 156, 155, 146),
              child: Column(
                children: [
                  Text("data"),
                  ElevatedButton(onPressed: () {}, child: Text("add"))
                ],
              ),
            ),
            Divider(),
            Container(
              color: Colors.amber,
              height: 200,
              child: ListView(
                  padding: EdgeInsets.all(4),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => CircleAvatar(
                      foregroundColor: Colors.amber,
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/logo.jpg"),
                    ),
                  )),
            )
          ],
        ));
  }
}

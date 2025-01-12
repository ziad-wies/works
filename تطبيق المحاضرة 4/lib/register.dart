import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/drawr.dart';

class myregisteration extends StatefulWidget {
  @override
  State<myregisteration> createState() => _myregisterationState();
}

class _myregisterationState extends State<myregisteration> {
  List<String> student = ["ali", "ahmed", "mosa"];

  TextEditingController input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("registration"),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: mydrawer(),
      body: Column(
        children: [
          //for(int i=0;i<student.length;i++)
          //ListTile(title: Text(student[i]),)
          Container(
              margin: EdgeInsets.all(5),
              child: TextField(
                controller: input,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.grey,
                    //label: Text("name"),
                    labelText: "name",
                    hintText: "enter your name",
                    prefixIcon: Icon(Icons.remove_red_eye),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    filled: true),
                onTap: () {},
              )),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black)),
              onPressed: () {
                setState(() {});
                if (input.text.isNotEmpty)
                  student.add(input.text);
                else
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("please input name")));
                input.clear();
              },
              child: Text(
                "add",
                style: TextStyle(color: Colors.white),
              )),

          Expanded(
              child: ListView.builder(
            itemCount: student.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: const Color.fromARGB(255, 43, 110, 143),
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        student.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                  trailing: InkWell(
                    child: Icon(Icons.update),
                    onTap: () {
                      student[index] = input.text;
                      input.clear();
                      setState(() {});
                    },
                  ),
                  title: Text(
                    student[index],
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    input.text = student[index];
                  },
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}

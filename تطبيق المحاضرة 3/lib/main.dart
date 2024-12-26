import 'package:flutter/material.dart';
void fun1()
{
  print("object");
}

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 20, 3, 97),
          actions: [
            IconButton(onPressed: fun1, icon: Icon(Icons.share),color: Colors.white),
            IconButton(onPressed: (){ print("hello");}, icon: Icon(Icons.download),color: Colors.white),
            IconButton(onPressed: ()=>print("object"), icon: Icon(Icons.search),color: Colors.white)

          ],
        ),
        drawer: Drawer(

          backgroundColor: const Color.fromARGB(255, 20, 3, 97),
          //width: MediaQuery.of(context).size.width/2,
          child: ListView(children: [
            Container(
                color: const Color.fromARGB(255, 20, 3, 97),
                margin:EdgeInsets.zero ,
                child:   DrawerHeader(

                    margin: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 20, 3, 97)),
                        accountName: Center(
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage("assets/images/zi.jpg"),
                          ),
                        ),
                        //currentAccountPicture: SizedBox(height: 10,),

                        accountEmail: Center(child: Text("ziad@gmail.com"))))
            ),

            buildListTile("Home",Icon(Icons.home)),
            buildListTile("Login",Icon(Icons.login)),
             buildListTile("Logout",Icon(Icons.logout)),



          ]),
        ),
      ),
    );
  }

  Padding buildListTile(txt,icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: ListTile(title: Text(txt),tileColor: Colors.white,onTap: (){
              print("home");
            },
            leading: icon,
              trailing: Icon(Icons.arrow_forward_ios),
            ),
    );
  }

}
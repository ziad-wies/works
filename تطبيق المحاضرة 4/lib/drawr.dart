

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/login.dart';
import 'package:untitled8/navbar.dart';
import 'package:untitled8/register.dart';
import 'package:untitled8/slider.dart';

import 'main.dart';

class mydrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 95,),
      child: Drawer(
        backgroundColor: Colors.white,
        width: MediaQuery.of(context).size.width/2,
        child:
        Container(



         child: ListView(
              children: [
                DrawerHeader(

                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(color: Colors.amber),

                    child: Column(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(""),
                        radius: 50,

                      )
                      ,
                      Expanded(child: Divider(color: Colors.black,),),
                      SizedBox(height: 2,),
                      Expanded(child: Text("aaaaaaaaaa.com"))

                    ],)


                ),
                buildListTile(context,"Home",Icon(Icons.home),MyApp()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"rigister",Icon(Icons.login),myregisteration()),
                buildListTile(context,"nav bar",Icon(Icons.login),navbar()),
                buildListTile(context,"slider",Icon(Icons.login),CarouselDemo()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),
                buildListTile(context,"login",Icon(Icons.login),login()),



              ],





            ),


      ),
    ),);
  }

  Padding buildListTile(BuildContext context,title,icon,page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(title: Text(title),
            tileColor: Colors.teal,
            leading: icon,
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page),(route) => false);

            },

            ),
    );
  }
}

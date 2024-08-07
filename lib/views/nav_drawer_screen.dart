import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/home_screen.dart';

class DrawerDemo extends StatefulWidget {
  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Supriya Gupta"),
              accountEmail: Text("supriyag75@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "S",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            ListTile(
              leading:  Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pushNamed(context, "/");
              //  Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.pushNamed(context, "/profile");
            //    Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.pushNamed(context, "/settings");
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(Icons.contact_emergency),
              title: Text("Contact"),
              onTap: (){
                Navigator.pushNamed(context, "/contact");
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title:  Text("Help"),
              leading: Icon(Icons.help),
              onTap: (){
                Navigator.pushNamed(context, "/help");
               // Navigator.pop(context);
              },
            ),

          ],
        );

  }
}
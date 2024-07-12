import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo "),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
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
              title: Row(
                children: [
                  Icon(Icons.home),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Home"),
                  ),

                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Profile"),
                  ),

                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.settings),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Settings"),
                  ),

                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.contact_emergency),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Contact"),
                  ),

                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.help),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Help"),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
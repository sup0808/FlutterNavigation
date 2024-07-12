import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer",
      home: DrawerDemo(),
    );
  }
}

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
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/nav_drawer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      home: DrawerDemo(),
    );
  }
}



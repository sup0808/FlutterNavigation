import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/contact_screen.dart';
import 'package:flutter_navigation/views/help_screen.dart';
import 'package:flutter_navigation/views/home_screen.dart';
import 'package:flutter_navigation/views/nav_drawer_screen.dart';
import 'package:flutter_navigation/views/profile_screen.dart';
import 'package:flutter_navigation/views/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      //home: HomePage(),
      initialRoute: "/",
      routes: {
        "/": (context)=>HomePage(),
        "/profile" : (context) => ProfileScreen(),
        "/settings" : (context) => SettingsScreen(),
        "/help" : (context) => HelpScreen(),
        "/contact" : (context) => ContactScreen()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drawer Demo "),
      ),
      drawer: DrawerDemo(),
      body: HomeScreen(),
    );
  }
}

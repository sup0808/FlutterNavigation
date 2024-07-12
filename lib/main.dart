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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
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
     drawer: Drawer(
        child: DrawerDemo(),
     ),
    // bottomNavigationBar: BottomNavigationBar(

   //  ),
   );

  }
}



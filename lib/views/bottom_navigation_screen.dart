import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/profile_screen.dart';
import 'package:flutter_navigation/views/settings_screen.dart';

import 'help_screen.dart';
import 'home_screen.dart';
import 'nav_drawer_screen.dart';

class BottomNavigationScreen extends StatefulWidget{

  int selectedIndex=0;

  BottomNavigationScreen({ required this.selectedIndex});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int currentIndexValue = 0;
  List screensList = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
    HelpScreen()


  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: const Text("Drawer Demo "),
     ),
     drawer: DrawerDemo(),
     body: screensList[currentIndexValue],
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       onTap: (index){
         setState(() {
           currentIndexValue = index;
         });
       },
       selectedItemColor: Colors.blue,
       unselectedItemColor: Colors.blueGrey,
       currentIndex: currentIndexValue,
       items: const [
         BottomNavigationBarItem(
             icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
         BottomNavigationBarItem(
             icon: Icon(Icons.person), label: "Profile", tooltip: "Profile"),
         BottomNavigationBarItem(
             icon: Icon(Icons.settings), label: "Settings", tooltip: "Settings"),
         BottomNavigationBarItem(
             icon: Icon(Icons.help), label: "Help", tooltip: "Help"),
       ],
     ),
   );
  }
}
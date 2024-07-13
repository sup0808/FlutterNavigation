import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget{

  int selectedIndex=0;

  BottomNavigationScreen({ required this.selectedIndex});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(
     type: BottomNavigationBarType.fixed,
     onTap: (index){
       setState(() {
        // selectedIndex = index;
       });
     },
     selectedItemColor: Colors.blue,
     unselectedItemColor: Colors.blueGrey,
     currentIndex: 0,
     items: [
       BottomNavigationBarItem(
           icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
       BottomNavigationBarItem(
           icon: Icon(Icons.person), label: "Profile", tooltip: "Profile"),
       BottomNavigationBarItem(
           icon: Icon(Icons.settings), label: "Settings", tooltip: "Settings"),
       BottomNavigationBarItem(
           icon: Icon(Icons.help), label: "Help", tooltip: "Help"),
     ],
   );
  }
}
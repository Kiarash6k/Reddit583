// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reddit583/Screens/WelcomeScreen.dart';

class MyHomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(212, 59, 58, 58),
      appBar:  AppBar(
    backgroundColor: Color.fromARGB(255, 32, 35, 34),
    elevation: 20.0,
    leading: SizedBox(
      height: 20.0,
      child: Image.asset("assets/images/redit.jpeg"),
    ),
    title: SizedBox(
      height: 30.0,
      child: Image.asset("assets/images/text.jpeg"),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.switch_account),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          );
        },
      ),
    ],
  ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 236, 112, 9),
        items: <Widget>[
          Icon(Icons.home_filled, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.chat_rounded, size: 30),
          Icon(Icons.notifications, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

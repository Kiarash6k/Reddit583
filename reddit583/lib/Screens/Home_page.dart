// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reddit583/Screens/WelcomeScreen.dart';
import 'package:reddit583/pages/Community.dart';
import 'package:reddit583/pages/Plus.dart';
import 'package:reddit583/pages/Setting.dart';
import 'package:reddit583/pages/feed.dart';
import 'package:reddit583/pages/Comment.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentTab = 'Home';

  final Map<String, Widget> _children = {
    'Home': feed(),
    'Community': Community(),
    'Plus': Plus(),
    'Comment' : Comment(),
    'Settings': Setting(),
  };

  changePage(int index){
    setState(() {
      _currentTab = _children.keys.elementAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(212, 59, 58, 58),
      appBar:  AppBar(
    backgroundColor: Color.fromARGB(255, 32, 35, 34),
    elevation: 20.0,
    leading: SizedBox(
      height: 20.0,
      child: Image.asset("assets/images/yoda2.png"),
    ),
    // title: SizedBox(
    //   height: 30.0,
    //   child: Image.asset("assets/images/text.jpeg"),
    // ),
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
      body: _children[_currentTab],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 85, 240, 28),
        items: <Widget>[
          Icon(Icons.home_filled, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.chat_rounded, size: 30),
          Icon(Icons.notifications, size: 30),
        ],
        onTap: (index) {
          changePage(index);
        },
      ),
    );
  }
}

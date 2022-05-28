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
    'Comment': Comment(),
    'Settings': Setting(),
  };

  changePage(int index) {
    setState(() {
      _currentTab = _children.keys.elementAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp
    (
      theme:
    new ThemeData(
      primaryColor: Color.fromARGB(255, 32, 35, 34), // Your app THEME-COLOR
    ),
    home: Scaffold(
      
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Username'),
              accountEmail: Text('Email'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('U',style: TextStyle(color: Colors.black),),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.manage_accounts_outlined,
                  size: 40,
                  color: Color.fromARGB(208, 27, 80, 0),
                ),
                backgroundColor: Colors.white,
              ),
              title: Text('Account'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.create_outlined,
                  size: 35,
                  color: Color.fromARGB(208, 27, 80, 0),
                ),
                backgroundColor: Colors.white,
              ),
              title: Text('Create Forum'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.tag,
                  size: 40,
                  color: Color.fromARGB(208, 27, 80, 0),
                ),
                backgroundColor: Colors.white,
              ),
              title: Text('Saved Posts'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.info_rounded,
                  size: 40,
                  color: Color.fromARGB(208, 27, 80, 0),
                ),
                backgroundColor: Colors.white,
              ),
              title: Text('About Us'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(212, 59, 58, 58),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 32, 35, 34),
        elevation: 20.0,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              child: Image.asset("assets/images/yoda2.png"),
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
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
      ),),
    );
  }
}

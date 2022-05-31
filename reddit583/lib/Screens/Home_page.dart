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
import '../pages/AccountPage.dart';
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
      primaryColor:  Color.fromARGB(255,40,90,82), // Your app THEME-COLOR
    ),
    home: Scaffold(
      
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 53,71,74),
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
                size: 35,
                color: Color.fromARGB(255, 105,231,164),
              ),
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
            title: Text('Account',
                style: TextStyle(
                    color: Color.fromARGB(255, 105,231,164),
                    fontSize: 20,
                    fontFamily: 'Mazzard',
                    fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => accountPage()));
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.create_outlined,
                size: 30,
                color: Color.fromARGB(255, 105,231,164),
              ),
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
            title: Text('Create Forum',
                style: TextStyle(
                    color: Color.fromARGB(255, 105,231,164),
                    fontSize: 20,
                    fontFamily: 'Mazzard',
                    fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.bookmark_outline,
                size: 30,
                color: Color.fromARGB(255, 105,231,164),
              ),
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
            title: Text('Saved Posts',
                style: TextStyle(
                    color: Color.fromARGB(255, 105,231,164),
                    fontSize: 20,
                    fontFamily: 'Mazzard',
                    fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.info_outline_rounded,
                size: 35,
                color: Color.fromARGB(255, 105,231,164),
              ),
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
            title: Text('About Us',
                style: TextStyle(
                    color: Color.fromARGB(255, 105,231,164),
                    fontSize: 20,
                    fontFamily: 'Mazzard',
                    fontWeight: FontWeight.bold)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
            ListTile(
              title: Text('Logout',style: TextStyle(
                    color: Color.fromARGB(255, 105,231,164),
                    fontSize: 20,
                    fontFamily: 'Mazzard',
                    fontWeight: FontWeight.bold)),
              leading: Icon(Icons.exit_to_app,color: Color.fromARGB(255, 105,231,164),),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 53,71,74),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,40,90,82),
        foregroundColor: Color.fromARGB(255, 105,231,164),
        elevation: 20.0,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              child: Image.asset("assets/images/imageedit_2_7305567590.png"),
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
        color: Color.fromARGB(255, 50, 113, 102),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 84, 191, 171),//Color.fromARGB(255,40,90,82),
        items: <Widget>[
          Icon(Icons.home_filled, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.add, size: 30),

          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          changePage(index);
        },
      ),),
    );
  }
}

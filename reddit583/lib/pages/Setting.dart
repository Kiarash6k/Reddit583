// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:reddit583/Screens/LoginScreen.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}
bool positive = false;
class _SettingState extends State<Setting> {
  get isSelected => null;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      color: Color.fromARGB(255, 255, 255, 255),   
        child:ListView(
      children: <Widget>[
        Text('\n'),
        ListTile(
          
          leading: CircleAvatar(
            child: Icon(Icons.manage_accounts_outlined,size: 40,color: Color.fromARGB(208, 27, 80, 0),),
            backgroundColor: Colors.white,
          ),
          title: Text('Account'),

          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            
          },

        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.create_outlined,size: 35,color: Color.fromARGB(208, 27, 80, 0),),
            backgroundColor: Colors.white,
          ),
          
          title: Text('Create Forum'),

          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {

          },
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.tag,size: 40,color: Color.fromARGB(208, 27, 80, 0),),
            backgroundColor: Colors.white,
          ),
          title: Text('Saved Posts'),

          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {

          },

        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.info_rounded,size: 40,color: Color.fromARGB(208, 27, 80, 0),),
            backgroundColor: Colors.white,
          ),
          title: Text('About Us'),

          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {

          },

        ),
        AnimatedToggleSwitch<bool>.dual(
          
            current: positive,
                first: false,
                second: true,
                dif: 50.0,
                borderColor: Colors.transparent,
                borderWidth: 5.0,
                height: 55,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1.5),
                  ),
                ],
                onChanged: (b) => setState(() => positive = b),
                colorBuilder: (b) => b ? Color.fromARGB(255, 18, 0, 117) : Color.fromARGB(255, 255, 255, 255),
                iconBuilder: (value) => value
                    ? Icon(Icons.brightness_2, color: Colors.yellow)
                    : Icon(Icons.sunny, color: Colors.yellow),
                textBuilder: (value) => value
                    ? Center(child: Text('Dark Mode'))
                    : Center(child: Text('Light Mode'))),
              

        
        
        
      ],
    ),
          
          
        
        
      
    );
  }
}

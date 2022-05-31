import 'package:flutter/material.dart';

class accountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53,71,74),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,40,90,82),
        foregroundColor: Color.fromARGB(255, 105,231,164),
        title: Text('Account'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: 
      Center(
        child: Text('Account'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 444),
            child: RaisedButton(
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red),
              ),
              child: Text('Login'),
              textColor: Colors.black,
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text('Login'),
                          leading: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 110),
            )),
        Container(
            margin: EdgeInsets.only(top: 22),
            child: RaisedButton(
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white),
              ),
              child: Text('Signup'),
              textColor: Colors.red,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text('Signup'),
                          leading: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 110),
            )),
      ],
    ))));
  }
}

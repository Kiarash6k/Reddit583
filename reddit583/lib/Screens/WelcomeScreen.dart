import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'LoginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 205, 28, 28));
    return Container(

      
      child: SafeArea(
        child: Scaffold(
           
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255,59,140,220),
              title: SizedBox(
                width: 200.0,
                child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    //center
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: Colors.white,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    repeatForever: false,
                    totalRepeatCount: 3,
                    animatedTexts: [
                      FlickerAnimatedText('Welcome to Reddit'),
                      FlickerAnimatedText('Welcome to Reddit'),
                    ],
                  ),
                ),
              ),
              leading: SizedBox(
        height: 20.0,
        child: Image.asset(
            'assets/images/redit.jpeg'),
      ),
            ),

            body: Container(
              decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.red])),
           child :Center(
                child: Column(
              children: [
                
                Container(

                    margin: EdgeInsets.only(top: 300),
                    child: RaisedButton(
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: SizedBox(
                        width: 250.0,
                        child: TextLiquidFill(
                          text: 'Login',
                          waveColor: Color.fromARGB(255, 255, 255, 255),
                          boxBackgroundColor: Colors.red,
                          loadDuration: Duration(seconds: 6),
                          waveDuration: Duration(seconds: 2),
                          
                          textStyle: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          boxHeight: 60.0,
                        ),
                      ),
                      textColor: Colors.black,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 110),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 22),
                    child: RaisedButton(
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      child: TextLiquidFill(
                        text: 'SignUp',
                        waveColor: Colors.red,
                        boxBackgroundColor: Colors.white,
                        loadDuration: Duration(seconds: 6),
                        waveDuration: Duration(seconds: 2),

                        textStyle: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        boxHeight: 60.0,
                      ),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 110),
                    )),
              ],
            ))))
            )
            );

  }
}

// class CustomShapeBorder extends ContinuousRectangleBorder {
//   @override
//   Path getOuterPath(Rect rect, {TextDirection textDirection}) {
//     final double innerCircleRadius = 150.0;

//     double x = 150, y = 45, r = 0.5;
//     Path path = Path()
//       ..addRRect(RRect.fromRectAndCorners(rect))
//       ..moveTo(rect.bottomRight.dx - 30, rect.bottomCenter.dy)
//       ..relativeQuadraticBezierTo(
//           ((-x / 2) + (x / 6)) * (1 - r), 0, -x / 2 * r, y * r)
//       ..relativeQuadraticBezierTo(
//           -x / 6 * r, y * (1 - r), -x / 2 * (1 - r), y * (1 - r))
//       ..relativeQuadraticBezierTo(
//           ((-x / 2) + (x / 6)) * (1 - r), 0, -x / 2 * (1 - r), -y * (1 - r))
//       ..relativeQuadraticBezierTo(-x / 6 * r, -y * r, -x / 2 * r, -y * r);

//     return path;
//   }
// }
class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30,
        rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75,
        rect.height + 50);
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30,
        rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}

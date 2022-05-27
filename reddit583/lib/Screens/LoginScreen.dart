import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'SignUpScreen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController user, pass;
  String userError, passError;
  bool isHidden = true;
  SnackBar alarm;
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    user = TextEditingController();
    pass = TextEditingController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }
  @override
  void dispose() {
    user.dispose();
    pass.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color.fromARGB(255, 15, 4, 76),
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text('Login'),
              centerTitle: true,
              backgroundColor:Color.fromARGB(237, 255, 255, 255),
              foregroundColor: Color.fromARGB(255, 42, 42, 42),
            ),
            body: Container(
              
              child: Container(
                margin: EdgeInsets.only(top: 30,right: 40,left: 40,bottom: 20),
                color: Color.fromARGB(165, 255, 254, 254),
              child : Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 0.0),
                        child: TextField(
                          controller: user,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            errorText: userError,
                            hintText: 'Email or Username',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(32.0, 14.0, 16.0, 14.0),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
                        child: TextField(
                          controller: pass,
                          obscureText: isHidden,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            
                            suffixIcon: InkWell(
                              onTap: () => {
                                setState(() {
                                  isHidden = !isHidden;
                                })
                              },
                              child: Icon(Icons.visibility, color: Colors.black,),
                            ),
                            errorText: passError,
                            hintText: 'password',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(42.0, 20.0, 42.0, 0.0),
                        child: MaterialButton(
                          elevation: 12.0,
                          height: 30,
                          minWidth: 250,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          onPressed: () {
                            String username = user.text;
                            String password = pass.text;
                            FocusScope.of(context).requestFocus(FocusNode());
                            setState(() {
                              if(username.length < 4) {
                                userError = 'username must be at least 4 characters';
                              } else if(password.length < 8) {
                                userError = null;
                                passError = 'password must be at least 8 characters';
                              } else {
                                userError = null;
                                passError = null;
                                alarm = SnackBar(content: Text('Login successful. welcome ${user.text}. have fun!'));
                                scaffoldKey.currentState.showSnackBar(alarm);
                              }
                            });
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                          },
                          color: Colors.black,
                          child: Icon(Icons.arrow_right_alt_sharp ,color: Colors.white,size: 50,),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 20,),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Not a member yet ? ', style: TextStyle(color: Colors.black,),),
                              GestureDetector(
                                child: Text('Sign up', style: TextStyle(color: Color.fromARGB(255, 0, 64, 73),shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],),),
                                onTap: () {
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => SignUpScreen()
                                  ),
                                  );
                                },),
                            ])),
                    Divider(
                      color: Colors.black,
                      indent: 300,
                      endIndent: 300,
                      thickness: 0.2,
                    ),
                    GestureDetector(
                                child: Text('Forgot Password?', style: TextStyle(color: Color.fromARGB(255, 0, 64, 73),shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],),),
                                onTap: () {
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => SignUpScreen() //check//
                                  ),
                                  );
                                },),
                    
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                      ),),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: SignInButton(
                        Buttons.Apple,
                        onPressed: () {},
                      ),),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: SignInButton(
                        Buttons.Facebook,
                        onPressed: () {},
                      ),)
                  ]
              ),
            )
        )
    )));
  }
}
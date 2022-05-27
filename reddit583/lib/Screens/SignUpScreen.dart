import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'LoginScreen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController user, pass, email, confirmPass;
  String userError, passError, emailError, confirmPassError;
  SnackBar alarm;
  bool isHidden = true;
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    user = TextEditingController();
    pass = TextEditingController();
    email = TextEditingController();
    confirmPass = TextEditingController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
     MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.deepOrange,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.black,
              foregroundColor: Colors.red,
              title: Text('Create a new account'),
              centerTitle: true,
            ),
            body: Container(
              child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(82.0, 40.0, 82.0, 0.0),
                        child: TextField(
                          controller: user,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            icon: Icon(Icons.person, color: Colors.black,),
                            errorText: userError,
                            hintText: 'username',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(82.0, 10.0, 82.0, 0.0),
                        child: TextField(
                          controller: email,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            icon: Icon(Icons.person, color: Colors.black,),
                            errorText: emailError,
                            hintText: 'email',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(82.0, 10.0, 82.0, 0.0),
                        child: TextField(
                          controller: pass,
                          obscureText: isHidden,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: Colors.black),
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
                        margin: EdgeInsets.fromLTRB(82.0, 10.0, 82.0, 0.0),
                        child: TextField(
                          controller: confirmPass,
                          obscureText: isHidden,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: Colors.black),
                            suffixIcon: InkWell(
                              onTap: () => {
                                setState(() {
                                  isHidden = !isHidden;
                                })
                              },
                              child: Icon(Icons.visibility, color: Colors.black,),
                            ),
                            errorText: confirmPassError,
                            hintText: 'confirm password',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(42.0, 10.0, 42.0, 0.0),
                        child: MaterialButton(
                          elevation: 12.0,
                          height: 30,
                          minWidth: 420,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          onPressed: () {
                            String username = user.text;
                            String emailAddress = email.text;
                            String password = pass.text;
                            String confirmedPassword = confirmPass.text;
                            FocusScope.of(context).requestFocus(FocusNode());
                            setState(() {
                              if(username.length < 4) {
                                userError = 'username must be at least 4 characters';
                              } else if(password.length < 8) {
                                userError = null;
                                emailError = null;
                                confirmPassError = null;
                                passError = 'password must be at least 8 characters';
                              } else if (!(password == confirmedPassword)) {
                                userError = null;
                                emailError = null;
                                passError = null;
                                confirmPassError = 'does not match your password';
                              }else {
                                userError = null;
                                emailError = null;
                                passError = null;
                                confirmPassError = null;
                                alarm = SnackBar(content: Text('Signup successful. welcome ${user.text}. have fun!'));
                                scaffoldKey.currentState.showSnackBar(alarm);
                              }
                            });
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                            
                          },
                          color: Colors.black,
                          child: Text('Sign up',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 10,),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account ? ', style: TextStyle(color: Colors.black,),),
                              GestureDetector(
                                child: Text('Login', style: TextStyle(color: Colors.black12,)),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen();
                                    },
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
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: SignInButton(
                        Buttons.Google,
                        text: 'Sign up with Google',
                        onPressed: () {},
                      ),),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: SignInButton(
                        Buttons.Apple,
                        text: 'Sign up with Apple',
                        onPressed: () {},
                      ),),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: SignInButton(
                        Buttons.Facebook,
                        text: 'Sign up with Facebook',
                        onPressed: () {},
                      ),)
                  ]
              ),
            )
        )
     ) );
  }
}
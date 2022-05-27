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
            backgroundColor: Color.fromARGB(255, 15, 4, 76),
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor:Color.fromARGB(237, 255, 255, 255), 
              foregroundColor: Color.fromARGB(255, 42, 42, 42),
              title: Text('Create a new account'),
              centerTitle: true,
            ),
            body: Container(
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 40,left: 40,bottom: 10),
                color: Color.fromARGB(165, 255, 254, 254),
              child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 0.0),
                        child: TextField(
                          controller: user,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            errorText: userError,
                            hintText: 'User Name',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                        child: TextField(
                          controller: email,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(

                            errorText: emailError,
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
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
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                        child: TextField(
                          controller: confirmPass,
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
                            errorText: confirmPassError,
                            hintText: 'Confirm',
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
                          child:  Icon(Icons.arrow_right_alt_sharp ,color: Colors.white,size: 50,),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 5,),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account ? ', style: TextStyle(color: Colors.black,),),
                              GestureDetector(
                                child: Text('Login', style: TextStyle(color: Color.fromARGB(239, 11, 1, 110),shadows: [Shadow(color: Colors.black, offset: Offset(1.0, 1.0), blurRadius: 2.0)],),),
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
     ) ));
  }
}
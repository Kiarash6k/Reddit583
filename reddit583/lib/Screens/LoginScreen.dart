import 'package:flutter/material.dart';



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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.deepOrange,
            appBar: AppBar(
              title: Text('Login to your account'),
              centerTitle: true,
              backgroundColor: Colors.black,
              foregroundColor: Colors.red,
            ),
            body: Container(
              child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(82.0, 220.0, 82.0, 0.0),
                        child: TextField(
                          controller: user,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            icon: Icon(Icons.person, color: Colors.black,),
                            errorText: userError,
                            hintText: 'email or username',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Colors.black, width: 1.5)),
                            contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(82.0, 20.0, 82.0, 0.0),
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
                  ]
              ),
            )
        )
    );
  }
}
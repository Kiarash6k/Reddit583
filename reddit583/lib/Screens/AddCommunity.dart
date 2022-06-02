import 'package:flutter/material.dart';

import '../MainClasses/Community.dart';

class AddCommunity extends StatefulWidget {
  Function addCommunity;
  AddCommunity({Key key, this.addCommunity}) : super(key: key);

  @override
  State<AddCommunity> createState() => _AddCommunityState();
}

class _AddCommunityState extends State<AddCommunity> {
  TextEditingController communityNameController;
  String communityNameError;
  SnackBar alarm;
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    communityNameController = TextEditingController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }
  @override
  void dispose() {
    communityNameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reddit'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.red,
      ),
      key: scaffoldKey,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 45.0, left: 40.0),
            child: Text('Enter your community name : '),
          ),
          Container(
              alignment: Alignment.center,
              width: 450.0,
              margin: EdgeInsets.only(top: 15.0),
              child: TextField(
                controller: communityNameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  icon: Icon(Icons.people_alt_sharp, color: Colors.cyan,),
                  errorText: communityNameError,
                  hintText: 'r/community',
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5)),
                  contentPadding: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                ),
              )
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 25.0, left: 40.0),
              child: MaterialButton(
                elevation: 12.0,
                height: 50,
                minWidth: 350,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  String communityName = communityNameController.text;
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {
                    if(communityName.isEmpty) {
                      communityNameError = 'you have not named your community yet';
                    } else {
                      communityNameError = null;
                      alarm = SnackBar(content: Text('$communityName created successfully!'));
                      scaffoldKey.currentState.showSnackBar(alarm);
                      widget.addCommunity(Community('r/$communityName',
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJeC4q0PJmgrC4YdjhNFMdc1DxE7TayRRB1Q&usqp=CAU'));
                      communityNameController.clear();
                      Navigator.pop(context);
                    }
                  });
                },
                color: Colors.teal,
                child: Text('creat',
                    style: TextStyle(
                      color: Colors.cyan,
                    )),
              )),
        ],
      ),
    );
  }
}
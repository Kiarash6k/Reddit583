import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  Function addPost;
  AddPost({Key key, this.addPost}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  TextEditingController titleController, textController;
  String titleError, textError;
  SnackBar alarm;
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    titleController = TextEditingController();
    textController = TextEditingController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }
  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
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
              width: 450.0,
              margin: EdgeInsets.only(top: 15.0),
              child: TextField(
                controller: titleController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  errorText: titleError,
                  hintText: 'post title',
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
              width: 450.0,
              margin: EdgeInsets.only(top: 15.0),
              child: TextField(
                controller: textController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  errorText: textError,
                  hintText: 'post text',
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
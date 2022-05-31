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
    return Scaffold();
  }
}
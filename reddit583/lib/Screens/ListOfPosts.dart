import 'package:flutter/material.dart';

import '../MainClasses/Community.dart';
import '../MainClasses/Post.dart';

class ShowPosts extends StatefulWidget {
  Community community;
  Post post;
  Function removePost;
  ShowPosts(this.community, this.post, this.removePost, {Key key}) : super(key: key);

  @override
  State<ShowPosts> createState() => _ShowPostsState();
}

class _ShowPostsState extends State<ShowPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
import 'package:flutter/material.dart';

import '../MainClasses/Community.dart';
import '../MainClasses/Post.dart';
import 'AddPost.dart';

class PostScreen extends StatefulWidget {
  // Community community;
  // PostScreen(this.community, {Key key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  Color LightGreen = const Color.fromARGB(255, 105, 231, 164);
  List<Post> posts = [];
  void addPost(Post post) {
    setState(() {
      posts.add(post);
    });
  }
  void removePost(int index) {
    setState(() {
      posts.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 53, 71, 74),
          body: Center(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Scaffold();
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: LightGreen,
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return AddPost(
                  addPost: addPost,
                );
              }),);
            },
          ),
        )
    );
  }
}

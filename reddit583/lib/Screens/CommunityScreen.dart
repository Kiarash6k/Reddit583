import 'package:flutter/material.dart';

import '../MainClasses/Community.dart';


class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<Community> communities = [Community('r/Valorant', 'https://tr.rbxcdn.com/4f24f514964225c249b4dc004ebcbe64/420/420/Image/Png'),
    Community('r/EA Sport', 'https://media.contentapi.ea.com/content/dam/eacom/en-us/common/october-ea-ring.png'),
    Community('r/Star wars', 'https://images.bonanzastatic.com/afu/images/0282/4b02/773d_5392595648/s-l1600.jpg'),
    Community('r/Champions league', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_FpknB8aQlF_bR6SZZcCWDXUCGGaWK2bzzQ&usqp=CAU'),
    Community('r/Real Madrid', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStMY_bWW9MbAFxNtG6RbQBLpnUZkyxviFmOA&usqp=CAU')
  ];
  void addCommunity(Community community) {
    setState(() {
      communities.add(community);
    });
  }
  void removeCommunity(int index) {
    setState(() {
      communities.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('reddit'),
          foregroundColor: Colors.red,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: communities.length,
            itemBuilder: (context, index) {
              return Scaffold();
            },),),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Scaffold();
            }));
          },
          hoverColor: Colors.teal,
        ),
      ),);
  }
}

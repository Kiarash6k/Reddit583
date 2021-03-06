import 'package:flutter/material.dart';
import 'package:reddit583/Screens/Home_page.dart';

import '../MainClasses/Community.dart';
import 'PostScreen.dart';


class ShowCommunityList extends StatefulWidget {
  Community community;
  Function removeCommunity;
  ShowCommunityList(this.community, this.removeCommunity, {Key key})
      : super(key: key);

  @override
  State<ShowCommunityList> createState() => _ShowCommunityListState();
}

class _ShowCommunityListState extends State<ShowCommunityList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 40, 90, 82),
      shadowColor: Colors.teal,
      elevation: 8.0,
      child: ListTile(
        title: Text(widget.community.getCommunityName(),
            style: const TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.bold)),
        leading: CircleAvatar(
          radius: 20.0,
          backgroundImage: NetworkImage(widget.community.getNetworkURL()),
        ),
        trailing: SizedBox(
          width: 52.0,
          child: Row(
            children: [
              GestureDetector(
                child: const Icon(Icons.delete),
                onTap: () {
                  widget.removeCommunity();
                },
              ),
              GestureDetector(
                child: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
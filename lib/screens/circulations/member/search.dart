import 'package:flutter/material.dart';

enum Searches {
  Category,
}

class SearchMember extends StatefulWidget {
  @override
  _SearchMemberState createState() => _SearchMemberState();
}

class _SearchMemberState extends State<SearchMember> {
  var search = [
    {'Member', Searches},{'Member', Searches},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Filters',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextField(decoration: InputDecoration(labelText: 'Search')),
                Text('Search Field',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                //DropdownButton()
              ],
            ),
          ),
          Column(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}

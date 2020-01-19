import 'package:flutter/material.dart';

enum SearchFor { Member, Book }

class SearchDropDown extends StatefulWidget {
  @override
  _SearchDropDownState createState() => _SearchDropDownState();
}

class _SearchDropDownState extends State<SearchDropDown> {
  SearchFor type = SearchFor.Member;

  void handle(SearchFor what) {
    setState(() {
      type = what;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xfff1f3f4), //Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(10)),
      constraints: BoxConstraints(minWidth: 100, maxWidth: 600),
      child: ListTile(
        onTap: () {},
        leading: Icon(Icons.search),
        title: TextField(
          decoration: InputDecoration.collapsed(hintText: 'Search'),
        ),
        trailing: PopupMenuButton(
          offset: Offset(-530, 100),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: ListTile(
                  title: Text('Member'),
                  trailing: Radio(
                    value: SearchFor.Member,
                    groupValue: type,
                    onChanged: handle,
                  ),
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  title: Text('Book'),
                  trailing: Radio(
                    value: SearchFor.Book,
                    groupValue: type,
                    onChanged: handle,
                  ),
                ),
              )
            ];
          },
        ),
      ),
    );
  }
}

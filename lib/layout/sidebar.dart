import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ulib/screens/dashboard.dart';

import 'pagerrouter.dart';

class Sidebar extends StatefulWidget {
  final PageRouter pagerouter;
  const Sidebar(this.pagerouter, {Key key}) : super(key: key);

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {

  var _selected = 'Dashboard';
  final _pageMapper = {
    'Dashboard': Dashboard(),
    'Member': Text('member'),
  };

  void setPage(String page) {
    if (_pageMapper.containsKey(page)) {
      setState(() {
        _selected = page;
      });
      this.widget.pagerouter.setPage(_pageMapper[_selected]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: <Widget>[
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.userShield,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(
                  'HR Manager',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            selected: (_selected == 'Dashboard') ? true : false,
            onTap: () {
              setPage('Dashboard');
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Member'),
            selected: (_selected == 'Member') ? true : false,
            onTap: () {
              setPage('Member');
            },
            trailing: Icon(
              FontAwesomeIcons.hackerNews,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Book'),
            selected: (_selected == 'Book') ? true : false,
            onTap: () {
              setPage('Book');
            },
            trailing: Icon(
              FontAwesomeIcons.hackerNews,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Circulation'),
            selected: (_selected == 'Circulation') ? true : false,
            onTap: () {
              setPage('Circulation');
            },
            trailing: Icon(
              FontAwesomeIcons.hackerNews,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ulib/screens/dashboard.dart';

import 'pagerrouter.dart';

class Sidebar extends StatelessWidget {
  final double menutextsize = 20, innermenusize = 15;
  final PageRouter pagerouter;

  const Sidebar(this.pagerouter,{Key key} ) : super(key: key);
  
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
            selected: true,
            onTap: () {pagerouter.setPage(Dashboard());},
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Member'),
            selected: false,
            onTap: () {pagerouter.setPage(Text('member'));},
            trailing: Icon(
              FontAwesomeIcons.hackerNews,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Book'),
            selected: false,
            onTap: () {},
            trailing: Icon(
              FontAwesomeIcons.hackerNews,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Circulation'),
            selected: false,
            onTap: () {},
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

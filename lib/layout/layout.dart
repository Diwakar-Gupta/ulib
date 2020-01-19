import 'package:flutter/material.dart';
import 'package:ulib/layout/pagerrouter.dart';
import 'package:ulib/layout/searchBar.dart';
import 'package:ulib/layout/sidebar.dart';
import 'package:ulib/screens/dashboard.dart';

import 'floatingbutton.dart';

class Layout extends StatelessWidget {
  var pagerouter = PageRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 250,
            child: Sidebar(pagerouter),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  color: Theme.of(context).canvasColor,
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SearchDropDown(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.add_alarm),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.add_alarm),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.add_alarm),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: pagerouter,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Floatingbtn(),
    );
  }
}

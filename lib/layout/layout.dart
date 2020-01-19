import 'package:flutter/material.dart';
import 'package:ulib/layout/pagerrouter.dart';
import 'package:ulib/layout/sidebar.dart';

import 'floatingbutton.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var pagerouter = PageRouter();
  var showSearchDropDown = false;

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
                      Container(
                        decoration: BoxDecoration(
                            color: Color(
                                0xfff1f3f4), //Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(10)),
                        constraints:
                            BoxConstraints(minWidth: 100, maxWidth: 600),
                        child: ListTile(
                          onTap: () {setState(() {
                            showSearchDropDown =false;
                          });},
                          leading: Icon(Icons.search),
                          title: TextField(
                            onSubmitted: (text){
                              if(showSearchDropDown)setState(() {
                                showSearchDropDown =false;
                                //do some stuff
                              });
                            },
                            decoration:
                                InputDecoration.collapsed(hintText: 'Search'),
                          ),
                          trailing: IconButton(
                            icon: Icon(showSearchDropDown?Icons.keyboard_arrow_up: Icons.keyboard_arrow_down),
                            ///hoverColor: Colors.red,
                            onPressed: (){
                              setState(() {
                                showSearchDropDown =!showSearchDropDown;
                              });
                            },
                          ),
                        ),
                      ),
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
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: pagerouter,
                      ),
                      Opacity(
                        opacity: showSearchDropDown ? 1 : 0,
                        child: Positioned(
                          left: 20,
                          child: Container(
                            color: Colors.red,
                            width: 600,
                            height: 150,
                          ),
                        ),
                      )
                    ],
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

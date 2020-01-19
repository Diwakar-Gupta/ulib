import 'package:flutter/material.dart';
import 'package:ulib/layout/layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Library',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Color(0xFFbbfedb),
          scaffoldBackgroundColor: Color(0xFFf9f9f9),
          canvasColor: Colors.white
        ),
        home: Layout(),
        );
  }
}

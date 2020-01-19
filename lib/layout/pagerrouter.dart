import 'package:flutter/material.dart';
import 'package:ulib/screens/dashboard.dart';

class PageRouter extends StatefulWidget {
  final _PageRouterState _pageRouterState = _PageRouterState();
  @override
  _PageRouterState createState() => _pageRouterState;

void setPage(Widget page) {
    _pageRouterState.setPage(page);
  }

}

class _PageRouterState extends State<PageRouter> {
  Widget _currentPage = Dashboard();
  void setPage(Widget page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _currentPage;
  }
}

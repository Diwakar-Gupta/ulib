import 'package:flutter/material.dart';

class CheckIn extends StatefulWidget {
  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  var forgetOverDue = false, dropBook = false;
  String message = "No item with barcode: ghjkjk";

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxWidth: 450),
            decoration: BoxDecoration(
              //border: Border.all(width: 0),
              color: Theme.of(context).canvasColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1.0, // has the effect of softening the shadow
                  spreadRadius: 1, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    1.0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: ListTile(
              leading: Text('Barcode: '),
              title: TextField(
                decoration: InputDecoration.collapsed(hintText: 'Barcode'),
              ),
              trailing: RaisedButton(
                child: Text('Submit'),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 450),
            decoration: BoxDecoration(
              //border: Border.all(width: 0),
              color: Theme.of(context).canvasColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1.0, // has the effect of softening the shadow
                  spreadRadius: 1, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    1.0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Checkbox(
                    value: forgetOverDue,
                    onChanged: (select) {
                      setState(() {
                        forgetOverDue = select;
                      });
                    },
                  ),
                  title: Text('Forget Overdue Charges'),
                ),
                ListTile(
                  leading: Checkbox(
                    value: dropBook,
                    onChanged: (select) {
                      setState(() {
                        dropBook = select;
                      });
                    },
                  ),
                  title: Text('Book Drop mode'),
                ),
              ],
            ),
          )
        ],
      ),
    ];

    widgets.insert(
        0,
        Opacity(
          opacity: (message == "") ? 0 : 1,
          child: Container(
            constraints: BoxConstraints(maxWidth: 800),
            padding: EdgeInsets.symmetric(vertical: 15),
            height: 120,
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    'Check in message',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ),
                Center(
                  child: Text(message,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
        ));

    widgets.insert(
        1,
        SizedBox(
          width: 10,
          height: 10,
        ));

    return Container(
      child: Column(children: widgets),
    );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';


class exitAlert {
  BuildContext context;
  exitAlert(this.context);

  Future<bool> onExit() {showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
    return showDialog(
      context: context,
      builder: (context) =>
      new AlertDialog(
        title: new Text('Alert'),
        content: new Text(
          'Confirm exit?'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text("No"),
          ),
          new FlatButton(
            onPressed: () {
              exit(0);
            },
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:async';

enum Answers { YES, NO, MAYBE }

class SimpleDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SimpleDialog示例'),
        ),
        body: Builder(
            builder: (context) => Center(
                child: RaisedButton(
                  onPressed: () => _showSimpleDialog(context),
                  child: Text('SimpleDialog'),
                )
            )
        )
    );
  }

  Future _showSimpleDialog(context) async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("Do you like flutter?"),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text("Yes"),
              onPressed: () {
                Navigator.pop(context, Answers.YES);
              },
            ),
            new SimpleDialogOption(
              child: new Text("No"),
              onPressed: () {
                Navigator.pop(context, Answers.NO);
              },
            ),
            new SimpleDialogOption(
              child: new Text("Maybe"),
              onPressed: () {
                Navigator.pop(context, Answers.MAYBE);
              },
            )
          ],
        ))) {
      case Answers.YES:
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Yes')));
        break;
      case Answers.NO:
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('No')));
        break;
      case Answers.MAYBE:
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Maybe')));
        break;
    }
  }
}

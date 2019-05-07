import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Column(
          children: <Widget>[
            Icon(
              Icons.phone,
              color: Colors.green[500],
              size: 80.0,
            ),
            IconButton(
              icon: Icon(Icons.phone),
              onPressed: () {
                print('click icon button');
              },
              tooltip: 'icon button',
              iconSize: 80.0,
            ),
            IconButton(
                icon: Icon(Icons.phone_android),
                onPressed: null,
              iconSize: 80.0,
            )
          ],
        ));
  }
}

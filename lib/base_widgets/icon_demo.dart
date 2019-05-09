import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.code), onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'base_widgets/icon_demo.dart',
                      )
                  )
              );
            })
          ],
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

import 'package:flutter/material.dart';
import 'package:flutter_base/base_widgets/container_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter base widgets',
      home: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContainerDemo()));
            },
            child: Text('Container'),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class RotatedBoxDemo extends StatefulWidget {
  @override
  _RotatedBoxDemoState createState() => _RotatedBoxDemoState();
}

class _RotatedBoxDemoState extends State<RotatedBoxDemo> {

  int _quoterTurns = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'decorate_widgets/rotated_box_demo.dart',
                      )));
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RotatedBox(
              quarterTurns: _quoterTurns,
              child: Image.asset('images/girl.jpg'),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _quoterTurns += 1;
                });
              },
              child: Text('增加90度'),
            )
          ],
        )
      ),
    );
  }
}


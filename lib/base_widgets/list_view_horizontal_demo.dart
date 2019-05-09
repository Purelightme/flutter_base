import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ListViewHorizontalDemo extends StatelessWidget {
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
                      filePath: 'base_widgets/list_view_horizontal_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.redAccent,
            ),
            Container(
              width: 160,
              color: Colors.brown,
            ),
            Container(
              width: 160,
              color: Colors.pink,
            ),
            Container(
              width: 160,
              color: Colors.purple,
            ),
          ],
        ),
      )
    );
  }
}

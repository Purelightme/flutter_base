import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class LimitedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'size_limit_widgets/limited_box_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            color: Colors.green,
          ),
          LimitedBox(
            maxWidth: 100.0,
            child: Container(
              width: 200.0,
              color: Colors.pinkAccent,
            ),
          )
        ],
      )
    );
  }
}

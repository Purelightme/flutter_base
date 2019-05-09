import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'size_limit_widgets/sized_box_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: SizedBox(
        width: 200.0,
        height: 300.0,
        child: Card(
          child: Text(
              'SizedBox',
              style: TextStyle(
                fontSize: 36.0
              )
          ),
        ),
      ),
    );
  }
}

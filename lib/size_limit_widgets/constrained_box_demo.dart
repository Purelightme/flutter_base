import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'size_limit_widgets/constrained_box_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100.0,
          maxWidth: 150.0,
          minHeight: 150.0,
          maxHeight: 300.0
        ),
        child: Container(
          width: 600.0,
          height: 600.0,
          color: Colors.green,
          child: Text('最大宽150，container设置成600也没用'),
        ),
      ),
    );
  }
}

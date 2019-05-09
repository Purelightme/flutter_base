import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'other_layout_widgets/transform_demo.dart',
                      )
                  )
              );
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Transform(
            alignment: Alignment.topLeft,
            transform: Matrix4.rotationZ(0.5),
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.pinkAccent,
              child: Text('Transform矩阵变换'),
            ),
          ),
        )
      )
    );
  }
}

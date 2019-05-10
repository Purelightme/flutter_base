import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class GestureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShowCode(
                  filePath: 'gesture_widgets/gesture_demo.dart',
                ))
              );
            },
          )
        ],
      ),
      body: Builder(builder: (context) => Center(
          child: GestureDetector(
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Text('长按显示SnackBar'),
            ),
            onLongPress: (){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('成功了')));
            },
          )
      ),)
    );
  }
}

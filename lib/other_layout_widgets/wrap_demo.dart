import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShowCode(
                  filePath: 'other_layout_widgets/wrap_demo.dart',
                ))
              );
            },
          )
        ],
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('西门',style: TextStyle(
                fontSize: 10.0
              ),),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade700,
              child: Text('司空',style: TextStyle(
                  fontSize: 10.0
              ),),
            ),
            label: Text('司空摘星'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: Text('婉清',style: TextStyle(
                  fontSize: 10.0
              ),),
            ),
            label: Text('木婉清'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade900,
              child: Text('一郎',style: TextStyle(
                  fontSize: 10.0
              ),),
            ),
            label: Text('萧十一郎'),
          ),
        ],
      ),
    );
  }
}

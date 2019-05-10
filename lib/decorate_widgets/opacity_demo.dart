import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class OpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                            filePath: 'decorate_widgets/opacity_demo.dart',
                          )));
            },
          )
        ],
      ),
      body: Center(
        child: Opacity(
            opacity: 0.3,
          child: Container(
            width: 250.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Text('不透明度0.3',style: TextStyle(
              color: Colors.white,
              fontSize: 28.0
            ),),
          ),
        ),
      ),
    );
  }
}

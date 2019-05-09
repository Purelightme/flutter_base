import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AspectRatio示例'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.code), onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'size_limit_widgets/aspect_ratio_demo.dart',
                      )
                  )
              );
            })
          ],
        ),
        body: Container(
          height: 200.0,
          child: AspectRatio(
            aspectRatio: 1.5,
            child: Container(
              color: Colors.pinkAccent,
            ),
          ),
        )
    );
  }
}

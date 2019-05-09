import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FractionallySizedBox示例'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.code), onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'size_limit_widgets/fractionally_sized_box_demo.dart',
                      )
                  )
              );
            })
          ],
        ),
        body: Container(
          color: Colors.blueGrey,
          height: 200.0,
          width: 200.0,
          child: FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: 0.5,
            heightFactor: 1.5,
            child: Container(
              color: Colors.pinkAccent,
            ),
          ),
        )
    );
  }
}

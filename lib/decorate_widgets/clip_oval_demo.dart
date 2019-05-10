import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ClipOvalDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipOval示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'decorate_widgets/clip_oval_demo.dart',
                      )));
            },
          )
        ],
      ),
      body: Center(
        child: ClipOval(
//          child: Container(
//            width: 300.0,
//            height: 300.0,
//            child: Image.asset('images/city.jpg',fit: BoxFit.fill,),
//          ),
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Image.asset('images/city.jpg',fit: BoxFit.fill,),
        ),
        ),
      ),
    );
  }
}

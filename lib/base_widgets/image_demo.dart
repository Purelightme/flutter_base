import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'base_widgets/image_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Center(
        child: Image.network(
          'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

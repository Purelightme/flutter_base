import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(Icons.add), onPressed: null),
          IconButton(
              icon: Icon(Icons.code),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShowCode(
                              filePath:
                                  'material_design_widgets/app_bar_demo.dart',
                            )));
              }),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class GridViewDemo extends StatelessWidget {
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
                        filePath: 'base_widgets/grid_view_demo.dart',
                      )
                  )
              );
            })
          ],
        ),
        body: GridView.count(
          crossAxisCount: 3,
          primary: false,
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 30.0,
          children: <Widget>[
            const Text('第一行第1列'),
            const Text('第一行第2列'),
            const Text('第一行第3列'),
            const Text('第一行第1列'),
            const Text('第一行第2列'),
            const Text('第一行第3列'),
            const Text('第一行第1列'),
            const Text('第一行第2列'),
            const Text('第一行第3列'),
            const Text('第一行第1列'),
          ],
        ));
  }
}

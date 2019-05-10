import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class BoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxDecoration示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                            filePath:
                                'decorate_widgets/box_decoration_demo.dart',
                          )));
            },
          )
        ],
      ),
      body: Builder(
        builder: (context) => Center(
            child: GestureDetector(
              onTap: (){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('别点我')));
              },
              child: Container(
                width: 260.0,
                height: 260.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 4.0),
                    borderRadius: BorderRadius.circular(36.0),
                    image: DecorationImage(
                        image: AssetImage('images/city.jpg'), fit: BoxFit.cover),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          spreadRadius: 8.0,
                          offset: Offset(-1.0, 1.0)
                      )
                    ]
                ),
              ),
            )
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'base_widgets/container_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            border: new Border.all(
              color: Colors.grey,
              width: 10.0
            ),
            color: Colors.white,
            borderRadius: const BorderRadius.all(const Radius.circular(8.0))
          ),
          child: Text(
            'Container示例',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
      ),
    );
  }
}

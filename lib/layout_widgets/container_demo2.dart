import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ContainerDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container2示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'layout_widgets/container_demo2.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
//                    decoration: BoxDecoration(
//                      border: Border.all(
//                        width: 10.0,
//                        color: Colors.blueGrey
//                      ),
//                      borderRadius: BorderRadius.all(Radius.circular(8.0))
//                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/city.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
//                    decoration: BoxDecoration(
//                        border: Border.all(
//                            width: 10.0,
//                            color: Colors.blueGrey
//                        ),
//                        borderRadius: BorderRadius.all(Radius.circular(8.0))
//                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/flower.jpg'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 10.0,
                            color: Colors.blueGrey
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/girl.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 10.0,
                            color: Colors.blueGrey
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/sky.jpg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

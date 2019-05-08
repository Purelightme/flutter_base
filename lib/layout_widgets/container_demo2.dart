import 'package:flutter/material.dart';

class ContainerDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container示例'),
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

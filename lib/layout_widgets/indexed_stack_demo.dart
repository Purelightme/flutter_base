import 'package:flutter/material.dart';

class IndexedStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack示例'),
        ),
        body: IndexedStack(
          index:0,
          alignment: Alignment.topLeft,
          children: <Widget>[
//          CircleAvatar(
//            backgroundImage: AssetImage('images/girl.jpg'),
//            radius: 100.0,
//          ),
//          Container(
//            decoration: BoxDecoration(
//              color: Colors.black38
//            ),
//            child: Text('武汉理工大学',style: TextStyle(
//              fontSize: 26.0,
//              fontWeight: FontWeight.bold,
//              color: Colors.white
//            ),),
//          ),
            Image.asset('images/student.jpeg'),
            Positioned(
              bottom: 100,
              right: 100,
              child: Text(
                '你的酒馆对我打了烊',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'serif',
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
    );
  }
}

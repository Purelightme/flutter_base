import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'layout_widgets/stack_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Stack(
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

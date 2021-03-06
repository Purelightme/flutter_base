import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'layout_widgets/align_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset(0,0),
            child: Image.asset('images/city.jpg',width: 300.0,height: 300.0,),
          ),
          Align(
            alignment: FractionalOffset(1.0,0),
            child: Image.asset('images/flower.jpg',width: 300.0,height: 300.0,),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset('images/girl.jpg',width: 300.0,height: 300.0,),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset('images/sky.jpg',width: 100.0,height: 100.0,),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset('images/city.jpg',width: 100.0,height: 100.0,),
          ),
        ],
      ),
    );
  }
}

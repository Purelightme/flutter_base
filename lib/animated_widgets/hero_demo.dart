import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class HeroFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                            filePath: 'animated_widgets/hero_demo.dart',
                          )));
            },
          )
        ],
      ),
      body: GestureDetector(
        child: Hero(
          tag: '第一张图片',
          child: Image.asset('images/city.jpg'),
        ),
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HeroSecondPage())
          );
        },
      ),
    );
  }
}

class HeroSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'animated_widgets/hero_demo.dart',
                      )));
            },
          )
        ],
      ),
      body: GestureDetector(
        child: Hero(
          tag: '第二张图片',
          child: Image.asset('images/sky.jpg'),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      )
    );
  }
}

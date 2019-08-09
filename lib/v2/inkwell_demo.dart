import 'package:flutter/material.dart';

class InkWellDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell水波纹'),
      ),
        body: Center(
            child: Builder(
      builder: (context) => Container(
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              InkWell(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text('点击了'),
                    ));
                  },
                  child: Padding(padding: EdgeInsets.all(10),child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 23,
                        height: 23,
                        child: Icon(Icons.color_lens,),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text('兑换中心'),
                      Expanded(
                        child: Container(),
                      ),
                      Text('88'),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 23,
                        height: 23,
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),)
              ),
              InkWell(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text('点击了'),
                    ));
                  },
                  child: Padding(padding: EdgeInsets.all(10),child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 23,
                        height: 23,
                        child: Icon(Icons.color_lens,),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text('兑换中心'),
                      Expanded(
                        child: Container(),
                      ),
                      Text('88'),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 23,
                        height: 23,
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),)
              ),
              InkWell(
                highlightColor: Colors.grey,
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text('点击了'),
                    ));
                  },
                  child: Padding(padding: EdgeInsets.all(10),child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 23,
                        height: 23,
                        child: Icon(Icons.color_lens,),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text('兑换中心'),
                      Expanded(
                        child: Container(),
                      ),
                      Text('88'),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 23,
                        height: 23,
                        child: Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),)
              ),
            ],
          )
        )
      )
    )));
  }
}

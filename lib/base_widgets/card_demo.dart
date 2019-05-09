import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_base/common/show_code.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'base_widgets/card_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Center(
        child: SizedBox(
          height: 400.0,
          child: Card(
            shape: RoundedRectangleBorder(),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    '深圳市南山区深南大道35号',
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  subtitle: Text('创想科技公司'),
                  leading: Icon(Icons.home,color: Colors.lightBlue),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    '湖北省武汉市洪山区世贸中心',
                    style: TextStyle(
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  subtitle: Text('途牛科技公司'),
                  leading: Icon(Icons.school,color: Colors.lightBlue),
                ),
                Divider(),
                CupertinoActivityIndicator(
                  radius: 60.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

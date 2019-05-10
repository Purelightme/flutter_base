import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class ReceiveBackParams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator接收返回参数'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                            filePath:
                                'navigator_widgets/receive_back_params.dart',
                          )));
            },
          )
        ],
      ),
      body: Builder(builder: (context) => Center(
        child: RaisedButton(
          onPressed: (){
            print('--');
            _navigateToSecondPage(context);
          },
          child: Text('跳转第二个页面'),
        ),
      )
      )
    );
  }

  Future _navigateToSecondPage(BuildContext context) async {
    final params = await Navigator.push(context,
      MaterialPageRoute(builder: (context) => SecondPage())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$params')));
  }

}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试'),
      ),
      body: Container(
        width: 100.0,
        height: 100.0,
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, '测试数据');
          },
          child: Text('返回'),
        ),
      )
    );
  }
}

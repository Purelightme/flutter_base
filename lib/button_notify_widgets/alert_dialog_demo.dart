import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'button_notify_widgets/alert_dialog_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () => _showAlertDialog(context),
        child: Text('AlertDialog'),
      )),
    );
  }

  Future _showAlertDialog(context) async {
    return showDialog(
        context: context,
        child: AlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
                Text('是否要删除？'),
                Text('一旦删除，无法撤回'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )
    );
  }
}

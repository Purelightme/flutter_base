import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class DismissibleDemo extends StatelessWidget {

  List<String> items = new List<String>.generate(30, (i) => "列表项${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShowCode(
                  filePath: 'gesture_widgets/dismissible_demo.dart',
                ))
              );
            },
          )
        ],
      ),
      body: Builder(
        builder: (context) => ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              final item = items[index];
              return Dismissible(
                key: Key(item),
                onDismissed: (direction){
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("$item被移除了")));
                },
                child: ListTile(title: Text('$item'),),
              );
            }
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'base_widgets/table_demo.dart',
                      )
                  )
              );
            },
          )
        ],
      ),
      body: Center(
        child: Table(
          columnWidths: <int,TableColumnWidth>{
            0:FixedColumnWidth(100.0),
            1:FixedColumnWidth(40.0),
            2:FixedColumnWidth(80.0),
            3:FixedColumnWidth(80.0),
          },
          border: TableBorder.all(
            color: Colors.black38,
            width: 2.0,
            style: BorderStyle.solid
          ),
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Text('姓名'),
                Text('性别'),
                Text('年龄'),
                Text('身高')
              ]
            ),
            TableRow(
                children: <Widget>[
                  Text('张三'),
                  Text('男'),
                  Text('20'),
                  Text('168')
                ]
            ),
            TableRow(
                children: <Widget>[
                  Text('李四'),
                  Text('女'),
                  Text('18'),
                  Text('156')
                ]
            ),
          ],
        ),
      ),
    );
  }
}

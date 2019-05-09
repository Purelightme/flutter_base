import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class BaseLineDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BaseLine示例'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => ShowCode(
                          filePath: 'other_layout_widgets/base_line_demo.dart',
                        )
                    )
                );
              },
            )
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Baseline(
              baseline: 80.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'AaBbCcDdEdFf',
                style: TextStyle(
                  fontSize: 18.0,
                  textBaseline: TextBaseline.alphabetic
                ),
              ),
            ),
            Baseline(
              baseline: 80.0,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 40.0,
                height: 40.0,
                color: Colors.redAccent,
              ),
            ),
            Expanded(
              child: Baseline(
                baseline: 80.0,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  '少年中国强，AbCc哈',
                  style: TextStyle(
                      fontSize: 26.0,
                      textBaseline: TextBaseline.alphabetic
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

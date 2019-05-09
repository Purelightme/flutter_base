import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class OffStageDemo extends StatefulWidget {
  @override
  _OffStageDemoState createState() => _OffStageDemoState();
}

class _OffStageDemoState extends State<OffStageDemo> {

  bool _offStage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OffStage示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (builder) => ShowCode(
                      filePath: 'other_layout_widgets/off_stage_demo.dart',
                    ))
              );
            },
          )
        ],
      ),
      body: Center(
        child: Offstage(
          offstage: _offStage,
          child: Text('我出来啦',style: TextStyle(fontSize: 26.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _offStage = !_offStage;
          });
        },
        tooltip: '切换显示',
        child: Icon(Icons.flip),
      ),
    );
  }
}

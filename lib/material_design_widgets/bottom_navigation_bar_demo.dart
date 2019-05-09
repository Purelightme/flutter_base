import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {

  int _currentIndex = 1;
  final _widgetOptions = [
    Text('Index 0:信息'),
    Text('Index 1:通讯录'),
    Text('Index 2:发现'),
  ];

  _changeTab(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'material_design_widgets/bottom_navigation_bar_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('信息')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              title: Text('通讯录')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('发现')
          ),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.deepPurple,
        onTap: _changeTab,
      ),
    );
  }
}


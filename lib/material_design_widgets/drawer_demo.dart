import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer示例'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.code), onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => ShowCode(
                      filePath: 'material_design_widgets/drawer_demo.dart',
                    )
                )
            );
          })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Purelightme'),
              accountEmail: Text('purelightme@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=92afee66fd36afc3110c39658318eb85/908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg'),
              ),
              onDetailsPressed: (){},
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.network('https://ss1.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=92afee66fd36afc3110c39658318eb85/908fa0ec08fa513db777cf78376d55fbb3fbd9b3.jpg'),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('个性装扮'),
            ),
          ],
        ),
      ),
    );
  }
}

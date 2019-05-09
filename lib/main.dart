import 'package:flutter/material.dart';
import 'package:flutter_base/base_widgets/card_demo.dart';
import 'package:flutter_base/base_widgets/container_demo.dart';
import 'package:flutter_base/base_widgets/grid_view_demo.dart';
import 'package:flutter_base/base_widgets/icon_demo.dart';
import 'package:flutter_base/base_widgets/image_demo.dart';
import 'package:flutter_base/base_widgets/list_view_demo.dart';
import 'package:flutter_base/base_widgets/list_view_horizontal_demo.dart';
import 'package:flutter_base/base_widgets/text_demo.dart';
import 'package:flutter_base/button_notify_widgets/alert_dialog_demo.dart';
import 'package:flutter_base/button_notify_widgets/popup_menu_btn_demo.dart';
import 'package:flutter_base/button_notify_widgets/simple_dialog_demo.dart';
import 'package:flutter_base/common/404.dart';
import 'package:flutter_base/form_widgets/login_page.dart';
import 'package:flutter_base/form_widgets/text_field_demo.dart';
import 'package:flutter_base/layout_widgets/align_demo.dart';
import 'package:flutter_base/layout_widgets/container_demo2.dart';
import 'package:flutter_base/layout_widgets/indexed_stack_demo.dart';
import 'package:flutter_base/layout_widgets/stack_demo.dart';
import 'package:flutter_base/material_design_widgets/app_bar_demo.dart';
import 'package:flutter_base/material_design_widgets/bottom_navigation_bar_demo.dart';
import 'package:flutter_base/material_design_widgets/drawer_demo.dart';
import 'package:flutter_base/material_design_widgets/tab_bar_demo.dart';
import 'package:flutter_base/size_limit_widgets/aspect_ratio_demo.dart';
import 'package:flutter_base/size_limit_widgets/constrained_box_demo.dart';
import 'package:flutter_base/size_limit_widgets/limited_box_demo.dart';
import 'package:flutter_base/size_limit_widgets/sized_box_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter基础widgets',
        routes: {
          '/404': (BuildContext context) => NotFound(),
          '/container-demo': (BuildContext context) => ContainerDemo(),
          '/image-demo': (BuildContext context) => ImageDemo(),
          '/text-demo': (BuildContext context) => TextDemo(),
          '/icon-demo': (BuildContext context) => IconDemo(),
          '/list-view-demo': (BuildContext context) => ListViewDemo(),
          '/list-view-horizontal-demo': (BuildContext context) =>
              ListViewHorizontalDemo(),
          '/grid-view-demo': (BuildContext context) => GridViewDemo(),
          '/login-page-demo': (BuildContext context) => LoginPage(),
          '/app-bar-demo': (BuildContext context) => AppBarDemo(),
          '/bottom-navigation-bar-demo': (BuildContext context) => BottomNavigationBarDemo(),
          '/tab-bar-demo': (BuildContext context) => TabBarDemo(),
          '/drawer-demo': (BuildContext context) => DrawerDemo(),
          '/popup-menu-btn-demo': (BuildContext context) => PopupMenuButtonDemo(),
          '/simple-dialog-demo': (BuildContext context) => SimpleDialogDemo(),
          '/alert-dialog-demo': (BuildContext context) => AlertDialogDemo(),
          '/text-field-demo': (BuildContext context) => TextFieldDemo(),
          '/card-demo': (BuildContext context) => CardDemo(),
          '/container2-demo': (BuildContext context) => ContainerDemo2(),
          '/align-demo': (BuildContext context) => AlignDemo(),
          '/stack-demo': (BuildContext context) => StackDemo(),
          '/indexed-stack-demo': (BuildContext context) => IndexedStackDemo(),
          '/sized-box-demo': (BuildContext context) => SizedBoxDemo(),
          '/constrained-box-demo': (BuildContext context) => ConstrainedBoxDemo(),
          '/limited-box-demo': (BuildContext context) => LimitedBoxDemo(),
          '/aspect-ratio-demo': (BuildContext context) => AspectRatioDemo(),

        },
        onGenerateRoute: (RouteSettings settings){
          WidgetBuilder builder;
          String param = settings.name.split('/')[1];
          builder = (BuildContext context) => new NotFound(originRoute: param,);
          return MaterialPageRoute(builder: builder,settings: settings);
        },
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('flutter从入门到实战'),
          ),
          body: Builder(
              builder: (context) => ListView(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/dasgh'),
                        child: Text('404'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/container-demo'),
                        child: Text('Container'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/image-demo'),
                        child: Text('Image'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/text-demo'),
                        child: Text('Text'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/icon-demo'),
                        child: Text('Icon'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/list-view-demo'),
                        child: Text('ListView'),
                      ),
                      RaisedButton(
                        onPressed: () => Navigator.pushNamed(
                            context, '/list-view-horizontal-demo'),
                        child: Text('ListViewHorizontal'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/grid-view-demo'),
                        child: Text('GridView'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/login-page-demo'),
                        child: Text('LoginPage'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/404'),
                        child: Text('Route404'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/app-bar-demo'),
                        child: Text('AppBar'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/bottom-navigation-bar-demo'),
                        child: Text('BottomNavigationBar'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/tab-bar-demo'),
                        child: Text('TabBar'),
                      ),
                      FlatButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/drawer-demo'),
                        child: Text('Drawer-FlatButton'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/popup-menu-btn-demo'),
                        child: Text('PopupMenuButton'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/simple-dialog-demo'),
                        child: Text('SimpleDialog'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/alert-dialog-demo'),
                        child: Text('AlertDialog'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/text-field-demo'),
                        child: Text('TextField'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/card-demo'),
                        child: Text('Card'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/container2-demo'),
                        child: Text('Container2'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/align-demo'),
                        child: Text('Align'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/stack-demo'),
                        child: Text('Stack'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/indexed-stack-demo'),
                        child: Text('IndexedStack'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/sized-box-demo'),
                        child: Text('SizedBox'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/constrained-box-demo'),
                        child: Text('ConstrainedBox'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/limited-box-demo'),
                        child: Text('LimitedBox'),
                      ),
                      RaisedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/aspect-ratio-demo'),
                        child: Text('AspectRatio'),
                      ),
                    ],
                  )
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _showSnackBar(context),
            tooltip: '增加',
            child: Icon(Icons.add),
          ),
//          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        )
    );
  }

  _showSnackBar(context) {
    //todo context有问题
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('你点击了+'),
    ));
  }
}

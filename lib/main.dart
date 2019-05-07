import 'package:flutter/material.dart';
import 'package:flutter_base/base_widgets/container_demo.dart';
import 'package:flutter_base/base_widgets/grid_view_demo.dart';
import 'package:flutter_base/base_widgets/icon_demo.dart';
import 'package:flutter_base/base_widgets/image_demo.dart';
import 'package:flutter_base/base_widgets/list_view_demo.dart';
import 'package:flutter_base/base_widgets/list_view_horizontal_demo.dart';
import 'package:flutter_base/base_widgets/text_demo.dart';
import 'package:flutter_base/form_widgets/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter base widgets',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter从入门到实战'),
        ),
        body: Builder(
          builder: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed:() => _gotoContainerDemo(context),
                child: Text('Container'),
              ),
              RaisedButton(
                onPressed: () => _gotoImageDemo(context),
                child: Text('Image'),
              ),
              RaisedButton(
                onPressed: () => _gotoTextDemo(context),
                child: Text('Text'),
              ),
              RaisedButton(
                onPressed: () => _gotoIconDemo(context),
                child: Text('Icon'),
              ),
              RaisedButton(
                onPressed: () => _gotoListViewDemo(context),
                child: Text('ListView'),
              ),
              RaisedButton(
                onPressed: () => _gotoListViewHorizontalDemo(context),
                child: Text('ListViewHorizontal'),
              ),
              RaisedButton(
                onPressed: () => _gotoGridViewDemo(context),
                child: Text('GridView'),
              ),
              RaisedButton(
                onPressed: () => _gotoLoginPage(context),
                child: Text('LoginPage'),
              ),
            ],
          )
        ),
      )
    );
  }

  _gotoContainerDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new ContainerDemo())
    );
  }
  
  _gotoImageDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new ImageDemo())
    );
  }

  _gotoTextDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new TextDemo())
    );
  }

  _gotoIconDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new IconDemo())
    );
  }

  _gotoListViewDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new ListViewDemo())
    );
  }

  _gotoListViewHorizontalDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new ListViewHorizontalDemo())
    );
  }

  _gotoGridViewDemo(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new GridViewDemo())
    );
  }

  _gotoLoginPage(context){
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new LoginPage())
    );
  }

}

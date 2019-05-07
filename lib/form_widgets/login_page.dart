import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String phone;
  String password;

  _login() {
    var loginForm = loginKey.currentState;
    if(loginForm.validate()){
      loginForm.save();
      print("phone:$phone,password:$password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form表单示例'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: loginKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(labelText: '请输入手机号'),
                      onSaved: (value) {
                        phone = value;
                      },
                      onFieldSubmitted: (value) {}),
                  TextFormField(
                    decoration: InputDecoration(labelText: '请输入密码'),
                    onSaved: (value) {
                      password = value;
                    },
                    obscureText: true,
                    validator: (value) {
                      return value.length < 6 ? '密码最低6位' : null;
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 340.0,
            height: 42.0,
            child: RaisedButton(
              onPressed: _login,
              child: Text(
                '登录',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

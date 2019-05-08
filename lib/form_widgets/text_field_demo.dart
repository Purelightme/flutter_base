import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {

  final TextEditingController _controller= TextEditingController();

  @override
  Widget build(BuildContext context) {

    _controller.addListener((){
      print("输入：${_controller.text}");
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('TextField示例'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            maxLength: 30,
            maxLines: 1,
            autocorrect: true,
            autofocus: true,
            obscureText: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.green
            ),
            onChanged: (text){
              print("onChange：${text}");
            },
            onSubmitted: (text){
              print("onSubmited：$text");
            },
            enabled: true,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade50,
              filled: true,
              helperText: '用户名',
              prefixIcon: Icon(Icons.person),
              suffixText: '用户名'
            ),
          ),
        ),
      ),
    );
  }
}

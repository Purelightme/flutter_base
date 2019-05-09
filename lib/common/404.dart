import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {

  NotFound({key,this.originRoute});

  final String originRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text("${originRoute} Not Found",style: TextStyle(
          fontSize: 26.0
        ),),
      ),
    );
  }
}

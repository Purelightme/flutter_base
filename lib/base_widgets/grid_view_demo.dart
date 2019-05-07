import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          primary: false,
          padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 30.0,
        children: <Widget>[
      const Text('第一行第1列'),
      const Text('第一行第2列'),
      const Text('第一行第3列'),
      const Text('第一行第1列'),
      const Text('第一行第2列'),
      const Text('第一行第3列'),
      const Text('第一行第1列'),
      const Text('第一行第2列'),
      const Text('第一行第3列'),
      const Text('第一行第1列'),
        ],
      )
    );
  }
}

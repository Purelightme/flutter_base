import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class CanvasDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Canvas示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                        filePath: 'decorate_widgets/canvas_demo.dart',
                      )));
            },
          )
        ],
      ),
      body: Center(
        child: SizedBox(
          width: 500.0,
          height: 500.0,
          child: CustomPaint(
            painter: LinePainter(),
            child: Center(
              child: Text('绘制圆',style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),)
            ),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter{
  Paint _paint = Paint()
      ..color = Colors.grey
      ..strokeCap = StrokeCap.square
      ..isAntiAlias = true
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

  void paint(Canvas canvas,Size size){
    canvas.drawCircle(Offset(200.0, 150.0), 150.0, _paint);
  }

  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}

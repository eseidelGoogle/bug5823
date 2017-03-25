import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(new CustomPaint(painter: new TestPainter()));
}

class TestPainter extends CustomPainter {
  void drawFlag(Canvas canvas, Paint paint) {
    canvas.drawRect(new Rect.fromLTWH(50.0, 50.0, 300.0, 200.0), paint);
    canvas.drawCircle(new Point(200.0, 150.0), 50.0, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;

    paint.color = const Color(0xFFEEEEEE);
    drawFlag(canvas, paint);

    canvas.rotate(math.PI / 2.0);
    canvas.scale(1.0, -1.0);
    paint.color = const Color(0xFF00FF00);
    drawFlag(canvas, paint);

    canvas.save();
    canvas.scale(1.0, 0.4999);
    paint.color = const Color(0xFFFF0000);
    drawFlag(canvas, paint);
    canvas.restore();

    canvas.save();
    canvas.scale(1.0, 0.5000);
    paint.color = const Color(0xFFFF0000);
    drawFlag(canvas, paint);
    canvas.restore();

    canvas.save();
    canvas.scale(1.0, 0.5001);
    paint.color = const Color(0xFFFF0000);
    drawFlag(canvas, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(TestPainter oldDelegate) => true;
}

// widgets/scratch_painter.dart
import 'package:flutter/material.dart';

class ScratchPainter extends CustomPainter {
  final List<Offset> points;

  ScratchPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != Offset.zero && points[i + 1] != Offset.zero) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(ScratchPainter oldDelegate) => oldDelegate.points != points;
}

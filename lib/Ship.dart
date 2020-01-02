// Imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/**
 * Ship class
 * @author sean
 */
class Ship extends CustomPainter {
  Paint _paint;

  // Constructor
  Ship() {
    _paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
  }

  // Painting method
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, _paint);
  }

  // Repainting logic
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
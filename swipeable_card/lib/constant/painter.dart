

import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class customPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintStroke0 = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    Paint paintFill0 = Paint()
      ..shader = ui.Gradient.linear(
        const Offset(0, 0),
        Offset(size.width, size.height),
        [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.3),
        ],
      )
      ..style = PaintingStyle.fill;

    Path path0 = Path();
    path0.moveTo(size.width * 0, 0);
    path0.lineTo(size.width * 0, size.height);
    path0.lineTo(size.width * 1, size.height * 1);
    path0.lineTo(size.width * 1, size.height * 0);
    path0.lineTo(size.width * 0.6, size.height * 0);
    path0.quadraticBezierTo(size.width * 0.5944000, size.height * 0.5666,
        size.width * 0.5, size.height * 0.59);
    path0.quadraticBezierTo(size.width * 0.4095000, size.height * 0.5756000,
        size.width * 0.3990900, size.height * 0.0104000);
    path0.lineTo(size.width * 0.4, 0);
    path0.close();
    // Apply the gradient to the path
    canvas.drawPath(path0, paintFill0);
    canvas.drawPath(path0, paintStroke0);
  }

  @override
  bool shouldRepaint(customPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(customPainter oldDelegate) => true;
}

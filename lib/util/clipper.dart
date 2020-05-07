import 'package:flutter/material.dart';

class DiagonalPathClipperTwo extends CustomClipper<Path> {
  DiagonalPathClipperTwo({
    @required this.clipHeight
  });
  double clipHeight;
  @override
    Path getClip(Size size) {
      final path = Path()
        ..lineTo(0.0, size.height)
        ..lineTo(size.width, size.height - clipHeight)
        ..lineTo(size.width, 0.0)
        ..close();
      return path;
    }

  @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      return true;
    }
}
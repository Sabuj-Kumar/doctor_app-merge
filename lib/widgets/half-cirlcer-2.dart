import 'package:flutter/material.dart';

class HalfCircleClipperfordetails extends CustomClipper<Path> {
  final double startPercent;

  HalfCircleClipperfordetails({this.startPercent = 0.7});

  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Offset handle = Offset(width / 2, height + (height * 0.1));

    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, height * 0.7)
      ..quadraticBezierTo(handle.dx, handle.dy, width, height * 0.7)
      ..lineTo(width, height * 0.7)
      ..lineTo(width, 0)
      ..close();
    /*Rect rect = Rect.fromCenter(
        center: Offset(width / 2, height / 2), width: width, height: height);
    Rect rect2 =
        Rect.fromPoints(Offset(0 - width / 2, 0), Offset(width, height));
    path.ar*/

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

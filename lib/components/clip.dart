  import 'package:flutter/material.dart';

    class MyClipper extends CustomClipper<Path> {
       
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.65);
    path.quadraticBezierTo(
      size.width / 4, 
      size.height * 0.6, 
      size.width / 2, 
      size.height * 0.65
    );
    path.quadraticBezierTo(
      4 / 6 * size.width, 
      size.height * 0.7, 
      size.width, 
      size.height * 0.65
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
    }


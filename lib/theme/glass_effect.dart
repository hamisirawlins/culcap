import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final child;
  const GlassBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: Container(
        color: Colors.white,
        height: size.height * 0.115,
        padding: EdgeInsets.all(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: child,
          ),
        ),
      ),
    );
  }
}

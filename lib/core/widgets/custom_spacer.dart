import 'package:flutter/material.dart';

class Vertical extends StatelessWidget {
  final double height;
  const Vertical(this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/logo.png", width: width),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/full-logo.png", width: width * 0.7),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:starbhak/nav.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Nav())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        'images/logo.png',
      ),
      // child: Image.asset(""),
    );
  }
}

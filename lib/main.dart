import 'package:flutter/material.dart';
import 'package:starbhak/splash.dart';
import 'package:starbhak/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbhak Mart',
      home: splash(),
      debugShowCheckedModeBanner: false,
    );
  } 
}

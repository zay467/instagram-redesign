import 'package:flutter/material.dart';
import 'package:instagram_redesign/Screens/feed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: Feed(),
    );
  }
}

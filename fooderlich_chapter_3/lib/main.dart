import 'package:flutter/material.dart';
import 'package:fooderlich_chapter_3/theme.dart';
import 'package:fooderlich_chapter_3/view/home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  final String _title = 'Fooderlich';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: FooderlichTheme.dark,
      home: MyHomePage(title: _title),
    );
  }
}

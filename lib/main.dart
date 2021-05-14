import 'package:flutter/material.dart';
import 'package:infokos/widgets/categories/category_select_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFOKOS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategorySelectScreen(),
    );
  }
}

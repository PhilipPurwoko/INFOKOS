import 'package:flutter/material.dart';
import 'package:infokos/models/kosan.dart';

class CategoryKosanScreen extends StatelessWidget {
  static const routeName = '/category-items';
  final kosanItems = Kosan.kosanItems;

  @override
  Widget build(BuildContext context) {
    final Map<String, String> categoryName =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName['category']!),
      ),
      body: Column(children: kosanItems),
    );
  }
}

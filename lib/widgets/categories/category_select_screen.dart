import 'package:flutter/material.dart';
import 'package:infokos/models/category.dart';
import 'package:infokos/widgets/categories/category_card.dart';

class CategorySelectScreen extends StatelessWidget {
  static const routeName = '/category-select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFOKOS | Reilable Service'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView(
          children:
              categories.map((category) => CategoryCard(category)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}

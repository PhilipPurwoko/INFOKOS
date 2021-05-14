import 'package:flutter/material.dart';
import 'package:infokos/widgets/categories/category_item_screen.dart';

class CategoryCard extends StatelessWidget {
  final String category;

  CategoryCard(this.category);

  void selectCategory(BuildContext ctx, String categoryName) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryItemScreen(categoryName);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectCategory(context, category);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Theme.of(context).accentColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}

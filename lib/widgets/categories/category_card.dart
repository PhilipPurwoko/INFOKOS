import 'package:flutter/material.dart';
import 'package:infokos/widgets/categories/category_kosan_screen.dart';

class CategoryCard extends StatelessWidget {
  final String category;

  CategoryCard(this.category);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryKosanScreen.routeName,
      arguments: <String, String>{'category': category},
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectCategory(context);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Column(
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
              Theme.of(context).accentColor.withOpacity(0.5),
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

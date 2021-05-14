import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String category;

  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

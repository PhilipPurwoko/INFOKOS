import 'package:flutter/material.dart';
import 'package:infokos/models/kosan.dart';
import 'package:infokos/widgets/kosan/kosan_card.dart';

class CategoryItemScreen extends StatelessWidget {
  final String categoryName;
  final kosanItems = <KosanCard>[
    KosanCard(
      Kosan(name: 'Kos Makmur', address: 'Jl mawar melati', price: 200000),
    ),
    KosanCard(
      Kosan(name: 'Kos Makmur', address: 'Jl mawar melati', price: 200000),
    ),
    KosanCard(
      Kosan(name: 'Kos Makmur', address: 'Jl mawar melati', price: 200000),
    ),
    KosanCard(
      Kosan(name: 'Kos Makmur', address: 'Jl mawar melati', price: 200000),
    ),
    KosanCard(
      Kosan(name: 'Kos Makmur', address: 'Jl mawar melati', price: 200000),
    ),
    KosanCard(
      Kosan(name: 'Kos Makmur', address: 'Jl mawar melati', price: 200000),
    ),
  ];

  CategoryItemScreen(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Column(
        children: kosanItems,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

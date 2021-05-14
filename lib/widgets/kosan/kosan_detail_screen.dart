import 'package:flutter/material.dart';
import 'package:infokos/models/kosan.dart';

class KosanDetailScreen extends StatelessWidget {
  final Kosan kosan;
  KosanDetailScreen(this.kosan);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kosan Detail'),
      ),
      body: Column(
        children: <Text>[
          Text(
            kosan.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Rp ${kosan.price.toString()}',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            kosan.address,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

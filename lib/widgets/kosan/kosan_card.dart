import 'package:flutter/material.dart';
import 'package:infokos/models/kosan.dart';
import 'package:infokos/widgets/kosan/kosan_detail_screen.dart';

class KosanCard extends StatelessWidget {
  final Kosan kosan;

  KosanCard(this.kosan);

  void selectKosan(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(KosanDetailScreen.routeName, arguments: kosan);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectKosan(context);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.blue, width: 2),
        ),
      ),
    );
  }
}

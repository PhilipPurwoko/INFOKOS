import 'package:infokos/widgets/kosan/kosan_card.dart';

class Kosan {
  String name;
  String address;
  int price;

  static final kosanItems = <KosanCard>[
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

  Kosan({
    required this.name,
    required this.address,
    required this.price,
  });
}

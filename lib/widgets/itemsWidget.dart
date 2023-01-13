import 'package:flutter/material.dart';
import 'package:shoppinglive/widgets/itemcard.dart';
import 'package:shoppinglive/widgets/upcomingLive.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.77,
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: const [
        ItemCard(
          title: "Yuzi_20",
          subtitle: "Artist",
          index: 1,
        ),
        ItemCard(
          title: "Alice_rip",
          subtitle: "Wallets",
          index: 2,
        ),
        ItemCard(
          title: "cris_345",
          subtitle: "shoes",
          index: 3,
        ),
        ItemCard(
          title: "Jack zones",
          subtitle: "Makeup Product",
          index: 4,
        ),
      ],
    );
  }
}

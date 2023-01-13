import 'package:flutter/material.dart';
import 'package:shoppinglive/widgets/itemcard.dart';

class UpcomingLive extends StatelessWidget {
  const UpcomingLive({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      childAspectRatio: 0.77,
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

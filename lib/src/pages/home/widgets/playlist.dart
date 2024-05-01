import 'package:flutter/material.dart';

class PlaylistGrid extends StatelessWidget {
  const PlaylistGrid({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return SliverPadding(
      padding: const EdgeInsets.all(12),
      sliver: SliverGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3.0,
        children: [
          PlaylistCard(Image.asset("assets/album1.jpg"), "goose"),
          PlaylistCard(Image.asset("assets/album2.png"), "#24"),
          PlaylistCard(Image.asset("assets/album3.jpeg"), "late night"),
          PlaylistCard(Image.asset("assets/album1.jpg"), "Top 50"),
          PlaylistCard(Image.asset("assets/album2.png"), "wowow"),
          PlaylistCard(Image.asset("assets/album3.jpeg"), "playlist"),
          PlaylistCard(Image.asset("assets/album1.jpg"), "umm"),
          PlaylistCard(Image.asset("assets/album2.png"), "mooooo"),
        ],
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  const PlaylistCard(this.img, this.label, {super.key});

  final String label;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.grey[850]),
      child: Row(
        children: [
          img,
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                label),
          )
        ],
      ),
    );
  }
}

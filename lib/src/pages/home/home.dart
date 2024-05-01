import 'package:flutter/material.dart';
import 'package:spotify_clone/src/pages/home/widgets/header.dart';

import 'widgets/playlist.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;

  void updateState(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: openDrawer(),
        appBar: customAppBar(context, updateState, _selectedTab),
        body: const CustomScrollView(
          slivers: [PlaylistGrid()],
        ));
  }
}

import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    BuildContext context, Function updateState, int selectedIndex) {
  return AppBar(
    titleSpacing: 0,
    title: Row(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color:
                selectedIndex == 0 ? Colors.greenAccent[700] : Colors.grey[800],
            borderRadius: BorderRadius.circular(32),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: selectedIndex == 0 ? Colors.black : Colors.white,
            ),
            child: const Text('All'),
            onPressed: () {
              updateState(0);
            },
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            color:
                selectedIndex == 1 ? Colors.greenAccent[700] : Colors.grey[800],
            borderRadius: BorderRadius.circular(32),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: selectedIndex == 1 ? Colors.black : Colors.white,
            ),
            child: const Text('Music'),
            onPressed: () {
              updateState(1);
            },
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            color:
                selectedIndex == 2 ? Colors.greenAccent[700] : Colors.grey[800],
            borderRadius: BorderRadius.circular(32),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: selectedIndex == 2 ? Colors.black : Colors.white,
            ),
            child: const Text('Podcasts'),
            onPressed: () {
              updateState(2);
            },
          ),
        ),
      ],
    ),
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
  );
}

Widget openDrawer() {
  return Drawer(
    child: ListView(
      children: const [
        SizedBox(
          height: 80,
          child: DrawerHeader(
              padding: EdgeInsets.zero,
              child: ListTile(
                leading: CircleAvatar(),
                title: Text(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    'fahsai'),
                subtitle: Text(style: TextStyle(fontSize: 12), 'View profile'),
                dense: false,
              )),
        ),
        ListTile(
          leading: Icon(Icons.thunderstorm),
          title: Text("What's new"),
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text("Listening history"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings and privacy"),
        ),
      ],
    ),
  );
}

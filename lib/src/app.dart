import 'package:flutter/material.dart';
import 'package:spotify_clone/src/navigation/tabbar.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white10,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
            unselectedLabelStyle: TextStyle(fontSize: 12),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38),
      ),
      home: const BottomTabBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:planet_galaxy_rnw/screens/detail_screen.dart';
import 'package:planet_galaxy_rnw/screens/home_screen.dart';

void main() {
  runApp(MyGalaxyApp());
}

class MyGalaxyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Galaxy",
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        PlanetDetailScreen.id: (context) => PlanetDetailScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:planet_galaxy_rnw/components/customeContainer.dart';
import 'package:planet_galaxy_rnw/components/gradient_appbar.dart';
import 'package:planet_galaxy_rnw/models/planet_model.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackColor,
      body: Column(
        children: [
          GradientAppBar("Galaxy Flutter"),
          Expanded(
            child: ListView.builder(
              itemCount: allPlanets.length,
              padding: EdgeInsets.only(right: 25.0, top: 40.0, bottom: 40.0),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: CustomContainer(
                    planet: allPlanets[i],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

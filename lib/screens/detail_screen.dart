import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_galaxy_rnw/constants.dart';
import 'package:planet_galaxy_rnw/models/planet_model.dart';

class PlanetDetailScreen extends StatefulWidget {
  static const String id = 'planet_screen';
  Planet planet;
  PlanetDetailScreen({this.planet});
  @override
  _PlanetDetailScreenState createState() => _PlanetDetailScreenState();
}

class _PlanetDetailScreenState extends State<PlanetDetailScreen>
    with SingleTickerProviderStateMixin {
  double height;
  double width;
  AnimationController rotateAnimationController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  void initState() {
    rotateAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    rotateAnimationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    rotateAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var setting = ModalRoute.of(context).settings;
    widget.planet = setting.arguments;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kScaffoldBackColor,
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 120.0,
                      left: 25.0,
                      right: 25.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: kCustomContainerBackColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 40.0,
                          ),
                          Column(
                            children: [
                              Text(
                                widget.planet.name.toUpperCase(),
                                style: kPlanetNameTextStyle.copyWith(
                                  fontSize: 35.0,
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                'Milkyway Planet',
                                style: TextStyle(
                                  color: kHomePageSubTextColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/ic_distance.png",
                                      height: 20.0,
                                      width: 20.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      widget.planet.distance,
                                      style: TextStyle(
                                        color: kHomePageSubTextColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/ic_gravity.png",
                                      height: 20.0,
                                      width: 20.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      widget.planet.gravity,
                                      style: TextStyle(
                                        color: kHomePageSubTextColor,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: RotationTransition(
                        turns: rotateAnimationController,
                        child: Container(
                          height: 125.0,
                          width: 125.0,
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    color: kScaffoldBackColor,
                                    height: height * 0.5,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 70.0,
                                          decoration: kAppBarDecoration,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text(
                                              "Welcome to MARS",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Image(
                                            image: AssetImage(
                                              widget.planet.imgPath,
                                            ),
                                            height: 100.0,
                                            width: 100.0,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "Distance from Sun",
                                                style: TextStyle(
                                                  color: kHomePageSubTextColor,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                              Text(
                                                widget.planet.distanceFromSun,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25.0,
                                                ),
                                              ),
                                              Text(
                                                "Distance from Earth",
                                                style: TextStyle(
                                                  color: kHomePageSubTextColor,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                              Text(
                                                widget.planet.distanceFromEarth,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(child: Container()),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Image(
                              image: AssetImage(widget.planet.imgPath),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OVERVIEW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      widget.planet.overview,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: kHomePageSubTextColor,
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Container(
              height: 70.0,
              width: double.infinity,
              decoration: kAppBarDecoration.copyWith(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 23.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(
                          "BACK",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

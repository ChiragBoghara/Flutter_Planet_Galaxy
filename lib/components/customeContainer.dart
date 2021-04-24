import 'package:flutter/material.dart';
import 'package:planet_galaxy_rnw/constants.dart';
import 'package:planet_galaxy_rnw/models/planet_model.dart';
import 'package:planet_galaxy_rnw/screens/detail_screen.dart';

class CustomContainer extends StatefulWidget {
  final Planet planet;
  CustomContainer({this.planet});
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer>
    with SingleTickerProviderStateMixin {
  var height;
  var width;
  AnimationController rotateController;
  @override
  void initState() {
    rotateController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    rotateController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    rotateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(PlanetDetailScreen.id, arguments: widget.planet);
            },
            child: Container(
              height: 160.0,
              width: width * 0.70,
              decoration: customContainerDecoration,
              padding: EdgeInsets.only(
                  left: 65.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          widget.planet.name,
                          style: kPlanetNameTextStyle,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Milkyway Galaxy',
                          style: TextStyle(
                            color: kHomePageSubTextColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Container(
                          height: 3.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
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
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
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
                                fontSize: 12.0,
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
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: RotationTransition(
            turns: rotateController,
            child: Container(
              height: 160.0,
              width: 160.0,
              padding: EdgeInsets.all(30.0),
              child: Image(
                image: AssetImage(widget.planet.imgPath),
              ),
            ),
          ),
        )
      ],
    );
  }
}

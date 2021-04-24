import 'package:flutter/material.dart';

var customContainerDecoration = BoxDecoration(
  color: kCustomContainerBackColor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      blurRadius: 15.0,
      spreadRadius: 10.0,
      color: Colors.black.withOpacity(0.05),
      offset: Offset(0, -1),
    ),
  ],
);

var kAppBarDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(12.0),
    bottomRight: Radius.circular(12.0),
  ),
  gradient: LinearGradient(
    colors: [const Color(0xFF3366FF), const Color(0xFF00CCFF)],
  ),
);

const kPlanetNameTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kHomePageSubTextColor = Color.fromRGBO(139, 136, 183, 1.0);

const kScaffoldBackColor = Color.fromRGBO(62, 57, 99, 1);

const kCustomContainerBackColor = Color.fromRGBO(67, 66, 115, 1.0);

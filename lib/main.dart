import 'package:exam_9/Home/Electronic_scrren.dart';
import 'package:exam_9/Home/Fasion_scrren.dart';
import 'package:exam_9/Home/HomeAppliance.dart';
import 'package:exam_9/Home/Home_scrren.dart';
import 'package:exam_9/Home/Privu_scrren.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Home(),
        "ele":(context) => Electronic_scrren(),
        "privu":(context) => Privu_scrren(),
        "Home":(context) => HomeAppliance(),
        "fasion":(context) => Fasiohn_scrren(),
      },
    ),
  );
}
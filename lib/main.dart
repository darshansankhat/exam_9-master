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
        "privu":(context) => Privu_scrren(),
      },
    ),
  );
}
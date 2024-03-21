


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poortfolio/about.dart';
import 'package:poortfolio/home.dart';
import 'package:poortfolio/project.dart';

void main(){
  runApp(MaterialApp(
  initialRoute: 'home',
    routes: {
      'home': (context) =>MyHome(),
      'about': (context)=>MyAbout(),
      'project': (context) =>MyProject(),
    },
    debugShowCheckedModeBanner: false,
  ));
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/flutter_class_3.dart';
import 'package:flutter1/home_page.dart';

class MyApp extends StatelessWidget{
    MyApp({super.key});

  @override
  Widget build (BuildContext context){
      return MaterialApp(
        title: 'Hello MyApp',
        home: FlutterClass3(),
      );
  }
}
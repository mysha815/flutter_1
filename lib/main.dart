import 'package:flutter1/Student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/app.dart';
import 'package:flutter1/home_page.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


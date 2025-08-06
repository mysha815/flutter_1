
import 'package:flutter/material.dart';
import 'package:flutter1/Bijoy/Food.dart';
import 'package:flutter1/app.dart';
import 'package:flutter1/module_11/CalculatorApp.dart';


main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:Food(),
    );
  }
}


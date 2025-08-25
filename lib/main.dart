import 'package:flutter1/Bijoy/Register.dart';
import 'package:flutter1/Bijoy/WaterTank.dart';
import 'package:flutter1/Test/Test_10.dart';
import 'package:flutter1/Test/Test_4.dart';
import 'package:flutter1/Test/Test_5.dart';
import 'package:flutter1/Test/Test_6.dart';
import 'package:flutter1/Test/Test_7.dart';
import 'package:flutter1/Test/Test_8.dart';
import 'package:flutter1/Test/Test_9.dart';
import 'package:flutter1/module_11/WaterTracker.dart';
import 'package:flutter1/module_12/Moneymanagement.dart';
import 'package:flutter1/module_12/TodoPage.dart';
import 'package:flutter1/module_13/add_new_product_screen.dart';
import 'package:flutter1/module_13/product_list.dart';
import 'Bijoy/Shopping.dart';
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
      theme: ThemeData(
        colorSchemeSeed: Colors.purpleAccent
      ),
      home:Test10(),
    );
  }
}


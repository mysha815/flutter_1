import 'package:flutter/material.dart';
import 'package:flutter1/Assignment_1.dart';
import 'package:flutter1/Bijoy/Food.dart';
import 'package:flutter1/Navigation.dart';
import 'package:flutter1/Tab.dart';
import 'package:flutter1/Test/Test.dart';
import 'package:flutter1/flutter_class_3.dart';
import 'package:flutter1/list_view.dart';
class Stackview extends StatelessWidget {
  const Stackview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StackView'),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          bottom: TabBar(
            labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
            Tab(
             icon: Icon(Icons.flight_takeoff),
              text: 'travel',

            ),
            Tab(
              icon: Icon(Icons.free_breakfast),
              text: 'food',
            ),
            Tab(
              icon: Icon(Icons.man),
              text: 'Man',
            ),
            Tab(
              icon: Icon(Icons.woman),
              text: 'Woman',
            ),
          ]),
        ),

        body: TabBarView(
            children: [
              ListClass(),
              Food(),
              Navigation(),
              FlutterClass3()
            ]),

      ),
    );
  }
}
// TODO Implement this library.
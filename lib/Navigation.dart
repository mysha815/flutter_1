import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '1');
          }, child: Text('Travel')),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '2');
          }, child: Text('class3Stack')),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '3');
          }, child: Text('Photo')),


        ],
      ),
    );
  }
}

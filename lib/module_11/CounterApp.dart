import 'package:flutter/material.dart';
import 'package:flutter1/Test/Test_3.dart';

class Counterapp extends StatefulWidget {
   Counterapp({super.key}){
     print('1 constructor');
   }

  @override
  State<Counterapp> createState(){
     print('2 create state');
     return _CounterAppState();
  }
}

class _CounterAppState extends State<Counterapp> {
  int number=0;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3 initstate');
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('4 deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('5 dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      number--;
                      print(number);
                    });

                  }, child: Text('-',style: TextStyle(fontSize: 35),)
              ),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      number++;
                      print(number);
                    });

                  }, child: Text('+',style: TextStyle(fontSize: 35),)
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Test3()));
              }, child: Text('Class 3')),

            ],
          ),
        ],
      ),
    );
  }
}

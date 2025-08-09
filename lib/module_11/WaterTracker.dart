import 'package:flutter/material.dart';
import 'package:flutter1/Widget/Addwaterbutton.dart';

class Watertracker extends StatefulWidget {
  const Watertracker({super.key});

  @override
  State<Watertracker> createState() => _WatertrackerState();
}

class _WatertrackerState extends State<Watertracker> {
  int currentInTaka =0;
  final int goal = 5000;


  void waterremove(int amount){
    setState(() {
      currentInTaka = (currentInTaka+amount).clamp(0, goal);
    });
  }

  void resetTank(){
    setState(() {
      currentInTaka=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress =(currentInTaka/goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor:Colors.greenAccent ,
        title: Text(
            'Water Tracker',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.blue .withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Text('Today\'s InTank',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                    SizedBox(height: 10,),
                    Text('${currentInTaka} LTR',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent),
        
                    )
                  ],
                ),
              ),
        
              SizedBox(height: 30,),
        
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                     color: Colors.blueAccent,
                     strokeWidth: 10,
                    value: progress,
                                  ),
                  ),
                  Text('${progress*100}%',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
                    ),
        
                  )
                ],
        
              ),
              SizedBox(
                height: 40,
              ),
        
        
              
              Wrap(
                spacing: 20,
                runSpacing: 20,
        
        
                children: [
        
                  Addwaterbutton(text: '100', onClick: ()=> waterremove(100),icon: Icons.local_drink,),
                  Addwaterbutton(text: '500', onClick: ()=> waterremove(500),  ),
                  Addwaterbutton(text: '1000', onClick: () => waterremove(1000), ),
                  Addwaterbutton(text: '-100', onClick: () => waterremove(-100), ),

                  
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()=>resetTank(), child: Text('Reset')),
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}



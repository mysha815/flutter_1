import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';



class Watertank extends StatefulWidget {
  const Watertank({super.key});

  @override
  State<Watertank> createState() => _WatertankState();
}

class _WatertankState extends State<Watertank> {
  int CurrentIntake =0;
  final int goal =5000;



  void Wateradd(int amount) {
    setState(() {
      CurrentIntake =(CurrentIntake+amount).clamp(0, goal);
    });
  }

  void Waterremove(int amount) {
    setState(() {
      CurrentIntake =(CurrentIntake-amount).clamp(0, goal);
    });
  }


  void resetTank() {
    setState(() {
      CurrentIntake=0;
    });
  }



  @override
  Widget build(BuildContext context) {
    double progress = (CurrentIntake / goal).clamp(0, 1);

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: Text('Water Tank',
        style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.6),
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Text('Water Level : $CurrentIntake / $goal ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    SizedBox(height: 20,),

                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(75),
                            child: WaveWidget(
                                config: CustomConfig(
                                  gradients: [
                                    [Colors.blue, Colors.blue.shade200],
                                    [Colors.blue.shade200, Colors.blue.shade100],
                                  ],
                                    durations: [3500, 5000],
                                    heightPercentages:[1 - progress, 1 - progress + 0.02],
                                  blur: const MaskFilter.blur(BlurStyle.solid, 2),
                                  gradientBegin: Alignment.bottomLeft,
                                  gradientEnd: Alignment.topRight,
                                ),
                              waveAmplitude: 20,
                                size: const Size(double.infinity, double.infinity),
                            ),
                          ),
                          Text(
                            "${(progress * 100).toStringAsFixed(0)}%",
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("0 L", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("5000 L", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Slider(
              value: CurrentIntake.toDouble(),
              min: 0,
              max: goal.toDouble(),
              divisions: goal ~/ 100,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                 CurrentIntake = value.toInt();
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}

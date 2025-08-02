import 'package:flutter/material.dart';

class ListClass extends StatefulWidget {

  const ListClass({super.key,});

  @override
  State<ListClass> createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  final List<String> image =[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgQiU0aGGMD15A313b4j1kggBXOHTOc0MAVA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi4rENaCJB-vABr9B2-60EbK8SZI6bVOKkeg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLgfcqUkBbnjtQ21T8FY_vkuzCarfckf-nVQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLVYU6pjVFE4Lo270XELsBgtqmxcnGJYrNGw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUt3UXft3o5QN5zCWje9kPhFms-13ydsS6YQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1RpgnV4x7HHE4vCtgcb6B7rtUiWCopOJCQg&s',
  ];
  final List<String> imageNames =[
    'Switzerland',
    'Coxs Bazar',
    'Sunset Beach',
    'River Boat',
    'Pattaya Beach',
    'wonderful Beach'

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Explore the world',style: TextStyle(color: Colors.white,fontSize: 25),),
       centerTitle: true,
       backgroundColor: Colors.blueAccent,
     ),
     body: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10,
         ),
         itemCount:6,
       itemBuilder: (context,index){
           return Card(
             elevation: 10,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(25)
             ),
             child: ClipRRect(
                 borderRadius: BorderRadius.circular(25),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      image[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                      right: 10,
                      child: Text(
                          imageNames[index],
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),

                      ),
                  ),
                ],
              ),
             ),
           );
       },
     ),
   );


  }
  }


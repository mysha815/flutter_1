import 'package:flutter/material.dart';
import 'package:flutter1/Test/Test_10.dart';

class Test9 extends StatelessWidget {
  final List<Map<String,String>> Places =[
    {
     'title' : 'The Pink Beach',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-fIWRt5LJJqGNdpWBtnoFKJ7zx5IqbQ7UNQ&s',
      'Subtitle' : 'This exceptional beach gets its Striking color\n from microscropic animal called',
      'Price' : '\$48 ',
      'name' : 'Komodo Island,Indonesia'
    },

    {
      'title' : 'Meru Tower',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa-kPL8EpB4vR4WI3kGoCxAABsO0mAr2NDCA&s',
      'Subtitle' : 'A Meru tower or pelinggih meru is the principal\n shrine of a Balinese temple. It is a Wooden..',
      'Price' : '\$36 ',
      'name':'Bali,Indonesia'
    },

    {
      'title' : 'Meru Tower',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa-kPL8EpB4vR4WI3kGoCxAABsO0mAr2NDCA&s',
      'Subtitle' : 'A Meru tower or pelinggih meru is the principal\n shrine of a Balinese temple. It is a Wooden..',
      'Price' : '\$36 ',
      'name':'South Sulawesi,Indonesia'
    }

  ];
   Test9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Category',
                   style: TextStyle(fontWeight: FontWeight.bold),
                 ),
                 TextButton(onPressed: (){},
                     child: Text('View all',
                       style: TextStyle(color: Colors.blue),
                     )
                 ),
               ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _waterCard(),
                  _waterCard(),
                  _waterCard(),
                  _waterCard(),


                ],
              ),
            ),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _StackCard(title: 'Ranjani Mountain', number: '\$48', Subtitle: 'Savar,dhaka', onclick: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Test10()));  }),
                  _StackCard(title: 'Bomo Mountain', number: '\$35', Subtitle: 'East,Indonesia', onclick: () {  }),
                  _StackCard(title: 'Bangladeshi Mountain', number: '\$100', Subtitle: 'Bagladesh', onclick: () {  }),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Destination',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
                  ),

                  TextButton(onPressed: (){},
                      child: Text('View all',
                        style: TextStyle(color: Colors.blue),
                      )),


                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Places.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          )
                        ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        children: [
                          Image.network(
                            Places[index]['image']!,
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Places[index]['title']!,
                                  style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on,color: Colors.blue,size: 14,),
                                    Text(
                                      Places[index]['name']!,
                                      style: TextStyle(color: Colors.blueAccent),
                                    )
                                  ],
                                ),
                                Text(
                                  Places[index]['Subtitle']!,
                                  style: TextStyle(color: Colors.grey,fontSize: 12),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      Places[index]['Price']!,
                                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
                                    ),
                                    Text('/Person',style: TextStyle(color: Colors.grey),)
                                  ],
                                )

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
Widget _StackCard({
 // required Image image,
  required String title,
required String number,
  required String Subtitle,
  required VoidCallback onclick,

}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKkN1rLCm2Y7Q5sA40_QJIyv82zKonCFXxw&s',
            height: 240,
            width: 350,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(title,
                      style: TextStyle(color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                    Text(number,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),


                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on,size: 16,color: Colors.white,),
                        Text(Subtitle,
                          style: TextStyle(color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black,
                              offset: Offset(1, 1)),

                          ],
                          ),
                        ),
                      ],
                    ),

                    Text('/Person',
                      style: TextStyle(color: Colors.white,fontSize: 14,
                      shadows: [
                        Shadow(blurRadius: 4,color: Colors.black,offset: Offset(1, 1)),
                      ],
                      ),
                    )
                  ],
                ),

              ],

            ),
          ),

        ],
      ),
    ),
  );
}
Widget _waterCard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset('asset/img.png',
             height: 20,
             width: 20,
           ),
           SizedBox(width: 6,),
            Text('river'),
          ],
        ),
      ),
    ),
  );
}

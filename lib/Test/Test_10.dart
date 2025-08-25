import 'package:flutter/material.dart';
class Test10 extends StatelessWidget {
  const Test10({super.key});

  @override
  Widget build(BuildContext context) {
final List<Map<String,String>> Mountains =[
  {
   'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyeKn8IcS84LuPZF9Yihiz8m-lmjsSVR9nVg&s',
    'title':'1'
  },
  {
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1T6AbriWXx6aicz8jJGxj9ojFVSq0EuhSXA&s',
    'title':'1'
  },
  {
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdsETUyet7qMLLKTAD3002quax9ZogPMwj6w&s',
    'title':'1'

  },
  {
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJtCvqIfxMy98kwgrt5we1kaNjAaTbN686-g&s',
    'title':'1'
  },
  {
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHkdJ4JHEFCkjzpZPORavN8Rr0kJhluUEgzA&s',
    'title':'1'
  },
];
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                ),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPtwzeV9bQT1Q_xtLjTYYzA7R-NtW31QQflA&s',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_back),
                    ),
                  ),
              ),
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border,color: Colors.red,),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Rinjani Mountain',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.blue,),
                            Text('Lombok,Indonesia',style: TextStyle(color: Colors.blue),),

                          ],
                        ),
                        Row(
                          children: [
                            Text('\$48',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(width: 5,),
                            Text('/Person',style: TextStyle(color: Colors.grey,fontSize: 12),)
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Travel is the movement of people between distant geographical locations. Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, and can be one way or round trip.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Preview',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                              SizedBox(height: 4,),
                              Text('4.8')
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),

                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Mountains.length,
                          itemBuilder:(context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                Mountains[index]['image']!,
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                          } ),
                    ),
                    Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                ),
                                child: Text('Book Now',style: TextStyle(color: Colors.white),)),
                          ),
                        ))

                  ],
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}

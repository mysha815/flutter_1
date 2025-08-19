import 'package:flutter/material.dart';

class Test8 extends StatelessWidget {
  final List<Map<String,String>> destinations =[
    {
      'name' : 'Paris',
      'image' :'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2qWEzyi4KsriB4TbVkgINfIqSC5VGg953-A&s',
    },

    {
      'name' : 'Maldives',
      'image' :'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvV_QZ9a4D6zd_mkkjdpzOAj6Xpl3sdfF9aw&s',
    },

    {
      'name' : 'Dubai',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU8UkxqowRJlpcVWC97anFxJeQ8_02nHDA5Q&s',
    },

    {
      'name' : 'Bali',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPt_VBg88T7PKcwDWMWDlni_ahHE5_ptH4Dg&s',
    }

  ];

  final List <Map<String,String>> Packages =[

    {
      'title' : 'Romantic Paris GetWay',
      'image' :'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_NgDRgy1TfuFhAJvD6rJuJpyaO8pV2oMQCQ&s',
      'Price' : '\$799',
    },

    {
      'title' : 'Bali Advenure Tour',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxOxP3iAdRKQvmWXreCtp0aAT7cTyKDALtYg&s',
      'Price' : '\$599',
    },

    {
      'title' : 'Nepal Tour',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iL6e5oOGmCYTs6dXC5UIyzIrHgweOBF-gg&s',
      'Price' : '\$599',
    },

    {
      'title' : 'Maldive Tour',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT7B_g4JoNPpKvys9Byc2vIz0TUhSKZRslTA&s',
      'Price' : '\$599',
    }
  ];


  Test8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr4yY_BtMv1WE1vcMEGDGkjGrbIcOTd8D7tQ&s',
                width: 500,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 50,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore the World',
                        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Container(
                          width: 300,
                          child:TextField(
                            decoration: InputDecoration(
                                hintText: 'Search destination...',
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                )
                            ),
                          )
                      )
                    ],
                  ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Top Destinations',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  childAspectRatio: 3/2,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image:DecorationImage(image: NetworkImage(destinations[index]['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),

                    child: Container(
                      alignment: Alignment.bottomLeft,

                      child: Text(destinations[index]['name']!,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    )

                );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Trending Packages',
              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: Packages.length,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal:16,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Image.network(
                        Packages[index]['image']!,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Packages[index]['title']!,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6,),

                              Row(
                                children: [
                                  Icon(Icons.schedule,color: Colors.grey,size: 16,),
                                  Text('4 nights.5 days',
                                    style: TextStyle(color: Colors.grey,),
                                  )
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Text(
                                    Packages[index]['Price']!,
                                    style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              ElevatedButton(onPressed: (){},
                               style:  ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),

                                ),

                                  child: Text('Book Now')
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
              })
        ],
      ),
    );
  }
}

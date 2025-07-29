import 'package:flutter/material.dart';
class Test extends StatelessWidget {
  final List<Map<String, String>> destinations =[
    {
      'name':'Dhaka',
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUQHZ_SHlMPFsbURVE_vadY5h4bnv0tBZAiw&s',
    },
    {
      'name':'Rajshahi',
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Hf7A8mi_01cux8hp45nIxJKFQBAcnPVRoA&s',
    },
    {
      'name':'Khulna',
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0J0NnCimeUDkcwdgOqdGR1K2rfk1GIacDQ&s',
    },
    {
      'name':'Sonargaon',
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1EbkTkApXC6TjuYzhgQup-gyEdfq5h9KQsg&s',
    },

  ];

  final List<Map<String, String>> packages =[
    {
      'title': 'Sylhet City',
      'price': '\$799',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx4ftKPmZf_lkhAFbbHlzW18maCpP5GYZ4jg&s',
    },
    {
      'title': 'Chittagaon Adventure Tour',
      'price': '\$599',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYvH1GDHMDUQzneolBhsPiFFEIdS_71twx-Q&s',
    },

    {
      'title': 'Lakhshmipur Tour',
      'price': '\$599',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSiEHXcjptSJ-Kl0l48kMF9z_pcEeBJYDq6g&s',
    },
    {
      'title': 'Coxs Bazar Tour',
      'price': '\$599',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfjKhn3aPZytu_PjAGcFjJQy4FDgyfSZ6uhw&s',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrXskoWCIWFscuCEt-TNduyrlW-YgiVI_1xg&s',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(height: 250,color: Colors.black.withOpacity(0.4),),
              Positioned(
                left: 20,
                  bottom: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore the Bangladesh',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search destination',
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Top Destination',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          SizedBox(height: 10,),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: destinations.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 3 /2,
            ),
            itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(destinations[index]['image']!),
                    fit: BoxFit.cover
                  ),

                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        colors: [Colors.transparent,Colors.black54],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    destinations[index]['name']!,
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }
          ),
          SizedBox(height: 20,),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Trending Packages',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          SizedBox(height: 10,),
          ListView.builder(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: packages.length,
              itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Image.network(
                       packages[index] ['image']!,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),

                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  packages[index]['title']!,
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 6,),
                                Row(
                                 children: [
                                   Icon(Icons.schedule,size: 16,color: Colors.grey.shade600,),
                                   SizedBox(height: 6,),
                                   Text(
                                     '4 nights.5 days',
                                     style:TextStyle(color: Colors.grey.shade600),
                                   ),
                                 ],
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      packages[index]['price']!,
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blueAccent,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(10) ,
                                          ),
                                        ),
                                        child: Text('Book Now'),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              );
              },
          ),
        ],
      ),
    );
  }
}

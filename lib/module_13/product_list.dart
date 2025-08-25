import 'package:flutter/material.dart';
import 'package:flutter1/module_13/Update_product_screen.dart';
import 'package:flutter1/module_13/add_new_product_screen.dart';
class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(),
            title: Text('Product name'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Code :3425678'),
                Row(
                  children: [
                    Text('Quantity :5'),
                    SizedBox(width: 10,),
                    Text('Unit :1000'),
                  ],
                ),


              ],
            ),
            trailing: PopupMenuButton<ProductOptions>(
                itemBuilder:(context) {
                  return[
                    PopupMenuItem(
                      value: ProductOptions.update,
                        child: Text('Update'),
                    ),
                    PopupMenuItem(
                        value: ProductOptions.delete,
                        child: Text('Delete'),
                    ),
                  ];
                },
              onSelected: (ProductOptions selesctedOption){
                  if (selesctedOption == ProductOptions.delete){
                    print('delete');
                  }else if (selesctedOption == ProductOptions.update){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>UpdateProductScreen()));
                  }
              },
            ),
          );
        },
        separatorBuilder: (context,index){
          return Divider(
            indent: 70,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AddNewProductScreen()));
      },
        child: Icon(Icons.add),
      ),
    );
  }
}
enum ProductOptions{
  update,
  delete
}
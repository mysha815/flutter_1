import 'package:flutter/material.dart';
class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _CodeTEController = TextEditingController();
  final TextEditingController _QuantityTEController = TextEditingController();
  final TextEditingController _PriceTEController = TextEditingController();
  final TextEditingController _ImageUrlTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update product'),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _fromKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Product name',
                      labelText: 'Product name',
                    ),
                  ),

                  TextFormField(
                    controller: _CodeTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Product Code',
                      labelText: 'Product Code',
                    ),
                  ),

                  TextFormField(
                    controller: _QuantityTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Product Quantity',
                      labelText: 'Product Quantity',
                    ),
                  ),

                  TextFormField(
                    controller: _PriceTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Unit price',
                      labelText: 'Unit price',
                    ),
                  ),

                  TextFormField(
                    controller: _ImageUrlTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: 'Image Url',
                      labelText: 'Image Url',
                    ),
                  ),

                  SizedBox(height: 10,),

                  SizedBox(
                    height: 30,
                    child: FilledButton(onPressed: (){},

                        child:Text('Update product') ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _ImageUrlTEController.dispose();
    _PriceTEController.dispose();
    _QuantityTEController.dispose();
    _CodeTEController.dispose();
    super.dispose();
  }
}

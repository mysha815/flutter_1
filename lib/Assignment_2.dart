import 'package:flutter/material.dart';
class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController NameController =TextEditingController();
    TextEditingController AgeController =TextEditingController();
    TextEditingController SalaryController =TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Empolye'),

      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: NameController,
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
          ),

          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: AgeController,
              decoration: InputDecoration(
                hintText: 'Age'
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
              padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: SalaryController,
              decoration: InputDecoration(
                hintText: 'Salary',
              ),
            ),
          ),

          ElevatedButton(onPressed: (){}, child: Text('Add Empolyee')),
        ],
      ),
    );
  }
}

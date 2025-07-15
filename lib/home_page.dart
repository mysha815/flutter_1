
import 'package:flutter/material.dart';
import 'package:flutter1/Student_model.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<StudentModel> students=[
    StudentModel("1", "mysha", "CSE", "3.80",'1'),
    StudentModel("2", "Aysha", "BSE", "3.50",'4'),
    StudentModel("3", "jaysha", "Fermacy", "4.80",'8'),
    StudentModel("4", "Kaysha", "BBA", "3.67",'9'),
    StudentModel("5", "laysha", "BCS", "3.90",'6'),
    StudentModel("6", "bysha", "graduate", "3.80",'5'),
    StudentModel("7", "poysha", "Economics", "3.80",'4'),
    StudentModel("8", "luysha", "Law", "3.80",'7'),
    StudentModel("9", "hiysha", "Civil", "3.80",'4'),
    StudentModel("10", "naysha", "CSE", "3.80",'2'),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Student List'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      backgroundColor: Colors.green,

      body: ListView.builder(
        itemCount: students.length,
        itemBuilder:(context,index){
          StudentModel student=students[index];
          return Card(
            child: ListTile(
             leading: Text(student.id!),
              title: Text(student.name!),
              subtitle: Text('CGPA:${students[index].CGPA}'),
              trailing: Column(
                children: [
                  Text('Department:${students[index].Department}'),
                  Text('roll:${students[index].roll}')
                ],
              ),

            ),
          );
        }
      ),
    );

  }
}

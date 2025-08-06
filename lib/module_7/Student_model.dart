class StudentModel{
  String?id;
  String?name;
  String?Department;
  String?CGPA;
  String?roll;


  StudentModel(String id,String name,String Department,String CGPA,String roll){
    this.id=id;
    this.name=name;
    this.CGPA=CGPA;
    this.Department=Department;
    this.roll=roll;
  }
}